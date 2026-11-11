// UART 8N1 receiver. CLKS_PER_BIT must be at least 8.
// Finish at the stop-bit centre so contiguous frames are accepted.
module uart_rx #(parameter integer CLKS_PER_BIT = 5208) (
    input wire clk, rst_n, din,
    output reg [7:0] rx_dout,
    output reg rx_vld
);
    localparam integer COUNT_WIDTH = $clog2(CLKS_PER_BIT);
    (* ASYNC_REG = "TRUE" *) reg [1:0] din_sync;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) din_sync <= 2'b11;
        else din_sync <= {din_sync[0], din};
    end
    typedef enum logic [1:0] {IDLE, START, DATA, STOP} rx_state_t;
    rx_state_t state;
    reg [COUNT_WIDTH-1:0] count;
    reg [2:0] bit_index;
    reg [7:0] shift_data;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= IDLE;
            count <= 0;
            bit_index <= 0;
            shift_data <= 0;
            rx_dout <= 0;
            rx_vld <= 0;
        end else begin
            rx_vld <= 0;
            case (state)
                IDLE: begin
                    count <= 0;
                    if (!din_sync[1]) state <= START;
                end
                START: if (count == COUNT_WIDTH'(CLKS_PER_BIT/2-1)) begin
                    count <= 0;
                    if (!din_sync[1]) begin
                        bit_index <= 0;
                        state <= DATA;
                    end else state <= IDLE;
                end else count <= count + 1'b1;
                DATA: if (count == COUNT_WIDTH'(CLKS_PER_BIT-1)) begin
                    count <= 0;
                    shift_data[bit_index] <= din_sync[1];
                    if (bit_index == 7) state <= STOP;
                    else bit_index <= bit_index + 1'b1;
                end else count <= count + 1'b1;
                STOP: if (count == COUNT_WIDTH'(CLKS_PER_BIT-1)) begin
                    count <= 0;
                    state <= IDLE;
                    if (din_sync[1]) begin
                        rx_dout <= shift_data;
                        rx_vld <= 1;
                    end
                end else count <= count + 1'b1;
                default: state <= IDLE;
            endcase
        end
    end
endmodule
