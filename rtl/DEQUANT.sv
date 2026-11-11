

module DEQUANT #(
  parameter WIDTH_IN = 24,
  parameter WIDTH_OUT = 9,
  parameter signed [WIDTH_IN-1:0] SCALE = 0,
  parameter signed [WIDTH_OUT-1:0] ZERO = 0, // Z_y
  parameter SHIFT = 0
) (
  input wire signed [WIDTH_IN-1:0] w_in,
  output wire signed [WIDTH_OUT-1:0] w_out
);

// wire signed [WIDTH_IN-1:0] scale = SCALE;
wire signed [WIDTH_IN*2-1:0] w_interm_prod;
wire signed [WIDTH_IN*2-1:0] w_interm_shift;
wire signed [WIDTH_OUT-1:0] w_interm_rescale;

assign w_interm_prod = $signed(w_in) * $signed(SCALE);
assign w_interm_shift = w_interm_prod >>> SHIFT;
assign w_interm_rescale = {w_interm_shift[WIDTH_IN*2-1], w_interm_shift[WIDTH_OUT-1-1:0]};
assign w_out = w_interm_rescale + ZERO;


endmodule
