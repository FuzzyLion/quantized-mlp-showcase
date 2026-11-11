module top_clk #(
    WIDTH = 8,
    NUM_IN = 28*28,
    NUM_OUT = 10
) (
    input clk, input rst,
    input unsigned [WIDTH*NUM_IN-1:0] w_in,
    output reg unsigned [WIDTH*NUM_OUT-1:0] r_out
);

localparam NL1 = 30;
localparam NL2 = 10;

wire [NL1*WIDTH-1:0] w_fc1_out;
wire [NL2*WIDTH-1:0] w_fc2_out;
reg [NL1*WIDTH-1:0] r_fc1_out;

FC1 fc1(.*, .w_in(w_in), .w_out(w_fc1_out));
FC2 fc2(.*, .w_in(r_fc1_out), .w_out(w_fc2_out));



always_ff @( posedge clk ) begin
    if (rst) begin
        r_out <= {WIDTH*NUM_OUT{1'b0}};
    end
    else begin
        r_fc1_out <= w_fc1_out;
        r_out <= w_fc2_out;
    end
end
    
endmodule