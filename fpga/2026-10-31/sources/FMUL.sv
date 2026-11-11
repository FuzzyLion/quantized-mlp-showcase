module FMUL #(
    WIDTH=8,
    FACTOR=0 //signed 8 bits
) (
    input wire unsigned [WIDTH-1:0] w_in, //unsigned 8 bits
    output wire signed [WIDTH*2-1:0] w_out
);
assign w_out = $signed({1'b0, w_in}) * $signed(FACTOR);
endmodule

