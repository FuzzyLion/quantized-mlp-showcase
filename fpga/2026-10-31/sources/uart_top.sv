// One processing clock for UART, image storage, network and display.
// Default clock: 100 MHz / 12 = 8.333 MHz; UART: 19200 baud, 8N1.
module uart_top #(
    parameter integer max_cnt_clk_net = 5,
    parameter integer SYS_CLK_HZ = 100_000_000,
    parameter integer BAUD_RATE = 19200
) (
    input wire clk, rst, din,
    output wire dout, led,
    output wire ledA, ledB, ledC, ledD, ledE, ledF, ledG, ledDP,
    output wire [7:0] ledAN
);
    localparam integer CLOCK_DIVIDE = 2 * (max_cnt_clk_net + 1);
    localparam integer UART_CLKS_PER_BIT =
        (SYS_CLK_HZ + CLOCK_DIVIDE * BAUD_RATE / 2) / (CLOCK_DIVIDE * BAUD_RATE);
    localparam integer DIV_COUNT_WIDTH = (max_cnt_clk_net < 1) ? 1 : $clog2(max_cnt_clk_net + 1);

    // Free-running divider: keep XDC net_clk divide_by in sync with CLOCK_DIVIDE.
    // The reset button does not interrupt clock pulses.
    reg clk_net = 1'b0;
    reg [DIV_COUNT_WIDTH-1:0] cnt_clk_net = 0;
    always @(posedge clk) begin
        if (cnt_clk_net == DIV_COUNT_WIDTH'(max_cnt_clk_net)) begin
            cnt_clk_net <= 0;
            clk_net <= ~clk_net;
        end else cnt_clk_net <= cnt_clk_net + 1'b1;
    end

    // Asynchronous assertion, synchronous release in the processing domain.
    (* ASYNC_REG = "TRUE" *) reg [1:0] reset_release = 0;
    always @(posedge clk_net or posedge rst) begin
        if (rst) reset_release <= 0;
        else reset_release <= {reset_release[0], 1'b1};
    end
    wire rst_n = reset_release[1];
    wire [7:0] data_in;
    reg [7:0] data_out;
    wire rx_vld, tx_busy;
    reg tx_vld;
    reg [7:0] datareg [0:783];
    wire [6271:0] datareg_wire;
    reg [9:0] reg_address;
    wire [79:0] net_data_out;

    assign ledAN = 8'b11111110;
    assign led = tx_busy;
    for (genvar j = 0; j < 784; j = j + 1) begin : pack_pixels
        assign datareg_wire[j*8 +: 8] = datareg[j];
    end
    uart_rx #(.CLKS_PER_BIT(UART_CLKS_PER_BIT)) serial_rx (
        .clk(clk_net), .rst_n(rst_n), .din(din),
        .rx_dout(data_in), .rx_vld(rx_vld)
    );
    uart_tx #(.CLKS_PER_BIT(UART_CLKS_PER_BIT)) serial_tx (
        .clk(clk_net), .rst_n(rst_n), .tx_din(data_out),
        .tx_vld(tx_vld), .tx_dout(dout), .busy(tx_busy)
    );
    top_clk net_1 (
        .clk(clk_net), .rst(~rst_n), .w_in(datareg_wire), .r_out(net_data_out)
    );
    led led1 (
        .clk(clk_net), .result(data_out),
        .ledA(ledA), .ledB(ledB), .ledC(ledC), .ledD(ledD),
        .ledE(ledE), .ledF(ledF), .ledG(ledG), .ledDP(ledDP)
    );

    // Preserve unsigned comparison and lowest-index tie break.
    reg [7:0] max_score, class_index;
    integer k;
    always @(*) begin
        max_score = net_data_out[0 +: 8];
        class_index = 0;
        for (k = 1; k < 10; k = k + 1) begin
            if (net_data_out[k*8 +: 8] > max_score) begin
                max_score = net_data_out[k*8 +: 8];
                class_index = 8'(k);
            end
        end
    end

    typedef enum logic [2:0] {
        RECEIVE, WAIT_FC1, WAIT_FC2, CAPTURE_RESULT,
        SEND_RESULT, WAIT_TX_START, WAIT_TX_DONE
    } state_t;
    state_t state;
    // Host protocol: send 784 bytes, then wait for one classification byte.
    // The pixel buffer is held stable throughout computation and transmission.
    always @(posedge clk_net or negedge rst_n) begin
        if (!rst_n) begin
            state <= RECEIVE;
            reg_address <= 0;
            data_out <= 0;
            tx_vld <= 0;
        end else begin
            tx_vld <= 0;
            case (state)
                RECEIVE: if (rx_vld) begin
                    datareg[reg_address] <= data_in;
                    if (reg_address == 783) begin
                        reg_address <= 0;
                        state <= WAIT_FC1;
                    end else reg_address <= reg_address + 1'b1;
                end
                WAIT_FC1: state <= WAIT_FC2;
                WAIT_FC2: state <= CAPTURE_RESULT;
                CAPTURE_RESULT: begin
                    data_out <= class_index;
                    state <= SEND_RESULT;
                end
                SEND_RESULT: if (!tx_busy) begin
                    tx_vld <= 1;
                    state <= WAIT_TX_START;
                end
                WAIT_TX_START: if (tx_busy) state <= WAIT_TX_DONE;
                WAIT_TX_DONE: if (!tx_busy) state <= RECEIVE;
                default: state <= RECEIVE;
            endcase
        end
    end
endmodule
