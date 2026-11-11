module uart_tx #(parameter integer CLKS_PER_BIT = 5208)( 
    input         clk,
    input         rst_n,
    input  [7:0]  tx_din,    // Transmit data (8bit)
    input         tx_vld,    // Transmit data valid indication flag (transmission request)

    output  reg   tx_dout,
    output  reg   busy    
);

// CLKS_PER_BIT is set by the wrapper for its processing clock.
// Intermediate signals    
    reg   [12:0]  cnt_bps;    // Baud rate counter
    wire          add_cnt_bps;
    wire          end_cnt_bps;

    reg   [3:0]   cnt_bit;    // Bit counter   0-9
    wire          add_cnt_bit;
    wire          end_cnt_bit;

    reg           tx_flag;

    localparam [12:0] tx_bps = CLKS_PER_BIT;

    reg    [9:0]   tx_data_r;  // Represents a frame of data (10bit)

// Using combinational logic as a baud rate selector for tx_bps
    
initial begin
	tx_flag <= 0;
	cnt_bps <= 0;
	cnt_bit <= 0;
	tx_dout <= 1;
end


// cnt_bps counter
    always @ (posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            cnt_bps <= 0;
        end
        else if (add_cnt_bps)begin
            if(end_cnt_bps) begin
                cnt_bps <= 0;
                end
            else begin
                cnt_bps <= cnt_bps + 1; 
                end   
        end

    end

    assign add_cnt_bps = tx_flag;
    assign end_cnt_bps = add_cnt_bps && cnt_bps == tx_bps - 1;


// cnt_bit counter
    always @(posedge clk or negedge rst_n)begin 
            if(!rst_n)begin
                cnt_bit <= 0;
            end 
            else if(add_cnt_bit)begin 
                if(end_cnt_bit) begin
                    cnt_bit <= 0;
                end
                else begin
                    cnt_bit <= cnt_bit + 1; 
                end 
            end 
    end
    assign add_cnt_bit = end_cnt_bps;
    assign end_cnt_bit = add_cnt_bit && cnt_bit == 10-1;


// tx_flag
    always @(posedge clk or negedge rst_n)begin
        if(!rst_n)begin
            tx_flag <= 1'b0;
        end
        else if(tx_vld) begin      // When there's a transmission request, flag = 1; 
            tx_flag <= 1'b1;
        end
        else if(end_cnt_bit) begin  // When 10bit data transmission is complete, tx_flag = 0;
            tx_flag <= 1'b0;
        end
    end


// tx_dout
    //assign tx_data_r = tx_vld?{1'b1,tx_din,1'b0}:tx_data_r;
    always @(posedge clk or negedge rst_n)begin 
            if(!rst_n)begin
               tx_data_r <= 0;
            end 
            else if(tx_vld)begin 
                tx_data_r <= {1'b1,tx_din,1'b0};
            end 
    end

    always @(posedge clk or negedge rst_n)begin 
            if(!rst_n)begin
                tx_dout <= 1'b1;  // Initial state is high level  ?Reason: If it's low, it would be mistaken for a start bit when sending data next time
            end 
            else if(tx_flag && cnt_bps == 2-1 )begin  // When the transmission signal is high and the bps counter starts counting
                tx_dout <= tx_data_r[cnt_bit];
            end 
            else begin 
                tx_dout <= tx_dout;
            end 
    end

    always @(*) begin
        busy = tx_vld || tx_flag;
    end
endmodule
