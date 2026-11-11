

module RELU #
(
  parameter WIDTH = 9
)
(
  input signed [WIDTH-1:0] w_in, 
  output unsigned [WIDTH-1-1:0] w_out
);
  localparam WIDTH_OUT = WIDTH-1;
  assign w_out = w_in[WIDTH-1]? { WIDTH_OUT{ 1'b0 } } : w_in[WIDTH_OUT:0];

endmodule

