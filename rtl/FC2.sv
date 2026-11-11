

module FC2 #(
    WIDTH_IN = 8,
    NUM_IN = 30,
    NUM_NEURONS = 10,
    WIDTH_OUT = 8
) (
    input wire signed [NUM_IN*WIDTH_IN-1:0] w_in,
    output wire signed [NUM_NEURONS*WIDTH_OUT-1:0] w_out
);

/*
 * Connect Neuros
 */


// ---Neuro 0 ---
localparam NEURON_WIDTH_0 = 21;
wire signed [NEURON_WIDTH_0-1:0] n0_out;

wire signed [2*WIDTH_IN-1:0] interm_0_0;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul0_0 (.w_in(w_in[0*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_0));
wire signed [2*WIDTH_IN-1:0] interm_0_1;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd112)) mul0_1 (.w_in(w_in[1*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_1));
wire signed [2*WIDTH_IN-1:0] interm_0_2;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd47)) mul0_2 (.w_in(w_in[2*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_2));
wire signed [2*WIDTH_IN-1:0] interm_0_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd51)) mul0_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_3));
wire signed [2*WIDTH_IN-1:0] interm_0_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul0_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_8));
wire signed [2*WIDTH_IN-1:0] interm_0_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd51)) mul0_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_10));
wire signed [2*WIDTH_IN-1:0] interm_0_11;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul0_11 (.w_in(w_in[11*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_11));
wire signed [2*WIDTH_IN-1:0] interm_0_12;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd50)) mul0_12 (.w_in(w_in[12*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_12));
wire signed [2*WIDTH_IN-1:0] interm_0_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd43)) mul0_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_13));
wire signed [2*WIDTH_IN-1:0] interm_0_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd41)) mul0_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_14));
wire signed [2*WIDTH_IN-1:0] interm_0_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd115)) mul0_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_17));
wire signed [2*WIDTH_IN-1:0] interm_0_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd53)) mul0_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_18));
wire signed [2*WIDTH_IN-1:0] interm_0_19;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd111)) mul0_19 (.w_in(w_in[19*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_19));
wire signed [2*WIDTH_IN-1:0] interm_0_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd117)) mul0_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_20));
wire signed [2*WIDTH_IN-1:0] interm_0_21;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd54)) mul0_21 (.w_in(w_in[21*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_21));
wire signed [2*WIDTH_IN-1:0] interm_0_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul0_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_22));
wire signed [2*WIDTH_IN-1:0] interm_0_24;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul0_24 (.w_in(w_in[24*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_24));
wire signed [2*WIDTH_IN-1:0] interm_0_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul0_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_25));
wire signed [2*WIDTH_IN-1:0] interm_0_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul0_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_26));
wire signed [2*WIDTH_IN-1:0] interm_0_28;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd42)) mul0_28 (.w_in(w_in[28*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_28));


wire signed [21-1:0] bias_0 = -21'd140;

assign n0_out =
$signed(interm_0_0) +
$signed(interm_0_1) +
$signed(interm_0_2) +
$signed(interm_0_3) +
$signed(interm_0_8) +
$signed(interm_0_10) +
$signed(interm_0_11) +
$signed(interm_0_12) +
$signed(interm_0_13) +
$signed(interm_0_14) +
$signed(interm_0_17) +
$signed(interm_0_18) +
$signed(interm_0_19) +
$signed(interm_0_20) +
$signed(interm_0_21) +
$signed(interm_0_22) +
$signed(interm_0_24) +
$signed(interm_0_25) +
$signed(interm_0_26) +
$signed(interm_0_28) +

$signed(bias_0);



// ---Neuro 1 ---
localparam NEURON_WIDTH_1 = 21;
wire signed [NEURON_WIDTH_1-1:0] n1_out;

wire signed [2*WIDTH_IN-1:0] interm_1_0;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd66)) mul1_0 (.w_in(w_in[0*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_0));
wire signed [2*WIDTH_IN-1:0] interm_1_1;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd48)) mul1_1 (.w_in(w_in[1*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_1));
wire signed [2*WIDTH_IN-1:0] interm_1_4;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd49)) mul1_4 (.w_in(w_in[4*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_4));
wire signed [2*WIDTH_IN-1:0] interm_1_7;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul1_7 (.w_in(w_in[7*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_7));
wire signed [2*WIDTH_IN-1:0] interm_1_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd49)) mul1_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_9));
wire signed [2*WIDTH_IN-1:0] interm_1_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul1_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_10));
wire signed [2*WIDTH_IN-1:0] interm_1_11;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd64)) mul1_11 (.w_in(w_in[11*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_11));
wire signed [2*WIDTH_IN-1:0] interm_1_12;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd42)) mul1_12 (.w_in(w_in[12*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_12));
wire signed [2*WIDTH_IN-1:0] interm_1_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd57)) mul1_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_13));
wire signed [2*WIDTH_IN-1:0] interm_1_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd47)) mul1_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_14));
wire signed [2*WIDTH_IN-1:0] interm_1_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd40)) mul1_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_16));
wire signed [2*WIDTH_IN-1:0] interm_1_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd68)) mul1_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_17));
wire signed [2*WIDTH_IN-1:0] interm_1_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd117)) mul1_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_18));
wire signed [2*WIDTH_IN-1:0] interm_1_19;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd73)) mul1_19 (.w_in(w_in[19*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_19));
wire signed [2*WIDTH_IN-1:0] interm_1_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd111)) mul1_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_20));
wire signed [2*WIDTH_IN-1:0] interm_1_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul1_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_22));
wire signed [2*WIDTH_IN-1:0] interm_1_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd52)) mul1_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_23));
wire signed [2*WIDTH_IN-1:0] interm_1_24;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul1_24 (.w_in(w_in[24*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_24));
wire signed [2*WIDTH_IN-1:0] interm_1_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd43)) mul1_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_25));
wire signed [2*WIDTH_IN-1:0] interm_1_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd54)) mul1_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_26));
wire signed [2*WIDTH_IN-1:0] interm_1_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul1_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_27));
wire signed [2*WIDTH_IN-1:0] interm_1_28;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd113)) mul1_28 (.w_in(w_in[28*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_28));
wire signed [2*WIDTH_IN-1:0] interm_1_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd60)) mul1_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_29));


wire signed [21-1:0] bias_1 = -21'd222;

assign n1_out =
$signed(interm_1_0) +
$signed(interm_1_1) +
$signed(interm_1_4) +
$signed(interm_1_7) +
$signed(interm_1_9) +
$signed(interm_1_10) +
$signed(interm_1_11) +
$signed(interm_1_12) +
$signed(interm_1_13) +
$signed(interm_1_14) +
$signed(interm_1_16) +
$signed(interm_1_17) +
$signed(interm_1_18) +
$signed(interm_1_19) +
$signed(interm_1_20) +
$signed(interm_1_22) +
$signed(interm_1_23) +
$signed(interm_1_24) +
$signed(interm_1_25) +
$signed(interm_1_26) +
$signed(interm_1_27) +
$signed(interm_1_28) +
$signed(interm_1_29) +

$signed(bias_1);



// ---Neuro 2 ---
localparam NEURON_WIDTH_2 = 21;
wire signed [NEURON_WIDTH_2-1:0] n2_out;

wire signed [2*WIDTH_IN-1:0] interm_2_2;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd34)) mul2_2 (.w_in(w_in[2*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_2));
wire signed [2*WIDTH_IN-1:0] interm_2_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd34)) mul2_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_3));
wire signed [2*WIDTH_IN-1:0] interm_2_4;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd24)) mul2_4 (.w_in(w_in[4*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_4));
wire signed [2*WIDTH_IN-1:0] interm_2_5;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd25)) mul2_5 (.w_in(w_in[5*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_5));
wire signed [2*WIDTH_IN-1:0] interm_2_6;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul2_6 (.w_in(w_in[6*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_6));
wire signed [2*WIDTH_IN-1:0] interm_2_7;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd48)) mul2_7 (.w_in(w_in[7*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_7));
wire signed [2*WIDTH_IN-1:0] interm_2_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd42)) mul2_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_8));
wire signed [2*WIDTH_IN-1:0] interm_2_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd41)) mul2_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_9));
wire signed [2*WIDTH_IN-1:0] interm_2_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd59)) mul2_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_10));
wire signed [2*WIDTH_IN-1:0] interm_2_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul2_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_13));
wire signed [2*WIDTH_IN-1:0] interm_2_15;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul2_15 (.w_in(w_in[15*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_15));
wire signed [2*WIDTH_IN-1:0] interm_2_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul2_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_16));
wire signed [2*WIDTH_IN-1:0] interm_2_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd70)) mul2_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_17));
wire signed [2*WIDTH_IN-1:0] interm_2_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd31)) mul2_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_18));
wire signed [2*WIDTH_IN-1:0] interm_2_19;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul2_19 (.w_in(w_in[19*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_19));
wire signed [2*WIDTH_IN-1:0] interm_2_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd32)) mul2_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_20));
wire signed [2*WIDTH_IN-1:0] interm_2_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd52)) mul2_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_22));
wire signed [2*WIDTH_IN-1:0] interm_2_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd31)) mul2_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_23));
wire signed [2*WIDTH_IN-1:0] interm_2_24;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd54)) mul2_24 (.w_in(w_in[24*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_24));
wire signed [2*WIDTH_IN-1:0] interm_2_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd35)) mul2_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_25));
wire signed [2*WIDTH_IN-1:0] interm_2_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul2_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_27));
wire signed [2*WIDTH_IN-1:0] interm_2_28;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd66)) mul2_28 (.w_in(w_in[28*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_28));
wire signed [2*WIDTH_IN-1:0] interm_2_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd44)) mul2_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_29));


wire signed [21-1:0] bias_2 = -21'd321;

assign n2_out =
$signed(interm_2_2) +
$signed(interm_2_3) +
$signed(interm_2_4) +
$signed(interm_2_5) +
$signed(interm_2_6) +
$signed(interm_2_7) +
$signed(interm_2_8) +
$signed(interm_2_9) +
$signed(interm_2_10) +
$signed(interm_2_13) +
$signed(interm_2_15) +
$signed(interm_2_16) +
$signed(interm_2_17) +
$signed(interm_2_18) +
$signed(interm_2_19) +
$signed(interm_2_20) +
$signed(interm_2_22) +
$signed(interm_2_23) +
$signed(interm_2_24) +
$signed(interm_2_25) +
$signed(interm_2_27) +
$signed(interm_2_28) +
$signed(interm_2_29) +

$signed(bias_2);



// ---Neuro 3 ---
localparam NEURON_WIDTH_3 = 21;
wire signed [NEURON_WIDTH_3-1:0] n3_out;

wire signed [2*WIDTH_IN-1:0] interm_3_0;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd59)) mul3_0 (.w_in(w_in[0*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_0));
wire signed [2*WIDTH_IN-1:0] interm_3_1;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd87)) mul3_1 (.w_in(w_in[1*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_1));
wire signed [2*WIDTH_IN-1:0] interm_3_2;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd50)) mul3_2 (.w_in(w_in[2*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_2));
wire signed [2*WIDTH_IN-1:0] interm_3_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd23)) mul3_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_3));
wire signed [2*WIDTH_IN-1:0] interm_3_4;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd65)) mul3_4 (.w_in(w_in[4*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_4));
wire signed [2*WIDTH_IN-1:0] interm_3_5;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul3_5 (.w_in(w_in[5*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_5));
wire signed [2*WIDTH_IN-1:0] interm_3_7;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd116)) mul3_7 (.w_in(w_in[7*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_7));
wire signed [2*WIDTH_IN-1:0] interm_3_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd34)) mul3_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_8));
wire signed [2*WIDTH_IN-1:0] interm_3_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul3_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_9));
wire signed [2*WIDTH_IN-1:0] interm_3_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd68)) mul3_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_10));
wire signed [2*WIDTH_IN-1:0] interm_3_12;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul3_12 (.w_in(w_in[12*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_12));
wire signed [2*WIDTH_IN-1:0] interm_3_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd54)) mul3_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_13));
wire signed [2*WIDTH_IN-1:0] interm_3_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd30)) mul3_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_14));
wire signed [2*WIDTH_IN-1:0] interm_3_15;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd67)) mul3_15 (.w_in(w_in[15*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_15));
wire signed [2*WIDTH_IN-1:0] interm_3_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul3_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_16));
wire signed [2*WIDTH_IN-1:0] interm_3_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd36)) mul3_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_18));
wire signed [2*WIDTH_IN-1:0] interm_3_19;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd49)) mul3_19 (.w_in(w_in[19*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_19));
wire signed [2*WIDTH_IN-1:0] interm_3_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd39)) mul3_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_20));
wire signed [2*WIDTH_IN-1:0] interm_3_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd40)) mul3_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_22));
wire signed [2*WIDTH_IN-1:0] interm_3_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul3_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_23));
wire signed [2*WIDTH_IN-1:0] interm_3_24;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd50)) mul3_24 (.w_in(w_in[24*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_24));
wire signed [2*WIDTH_IN-1:0] interm_3_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd45)) mul3_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_25));
wire signed [2*WIDTH_IN-1:0] interm_3_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd66)) mul3_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_26));
wire signed [2*WIDTH_IN-1:0] interm_3_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd32)) mul3_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_27));
wire signed [2*WIDTH_IN-1:0] interm_3_28;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd124)) mul3_28 (.w_in(w_in[28*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_28));


wire signed [21-1:0] bias_3 = 21'd64;

assign n3_out =
$signed(interm_3_0) +
$signed(interm_3_1) +
$signed(interm_3_2) +
$signed(interm_3_3) +
$signed(interm_3_4) +
$signed(interm_3_5) +
$signed(interm_3_7) +
$signed(interm_3_8) +
$signed(interm_3_9) +
$signed(interm_3_10) +
$signed(interm_3_12) +
$signed(interm_3_13) +
$signed(interm_3_14) +
$signed(interm_3_15) +
$signed(interm_3_16) +
$signed(interm_3_18) +
$signed(interm_3_19) +
$signed(interm_3_20) +
$signed(interm_3_22) +
$signed(interm_3_23) +
$signed(interm_3_24) +
$signed(interm_3_25) +
$signed(interm_3_26) +
$signed(interm_3_27) +
$signed(interm_3_28) +

$signed(bias_3);



// ---Neuro 4 ---
localparam NEURON_WIDTH_4 = 21;
wire signed [NEURON_WIDTH_4-1:0] n4_out;

wire signed [2*WIDTH_IN-1:0] interm_4_0;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd56)) mul4_0 (.w_in(w_in[0*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_0));
wire signed [2*WIDTH_IN-1:0] interm_4_2;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul4_2 (.w_in(w_in[2*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_2));
wire signed [2*WIDTH_IN-1:0] interm_4_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd68)) mul4_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_3));
wire signed [2*WIDTH_IN-1:0] interm_4_4;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul4_4 (.w_in(w_in[4*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_4));
wire signed [2*WIDTH_IN-1:0] interm_4_5;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul4_5 (.w_in(w_in[5*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_5));
wire signed [2*WIDTH_IN-1:0] interm_4_7;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd65)) mul4_7 (.w_in(w_in[7*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_7));
wire signed [2*WIDTH_IN-1:0] interm_4_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd115)) mul4_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_8));
wire signed [2*WIDTH_IN-1:0] interm_4_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd119)) mul4_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_9));
wire signed [2*WIDTH_IN-1:0] interm_4_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul4_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_10));
wire signed [2*WIDTH_IN-1:0] interm_4_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd52)) mul4_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_13));
wire signed [2*WIDTH_IN-1:0] interm_4_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd44)) mul4_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_14));
wire signed [2*WIDTH_IN-1:0] interm_4_15;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd43)) mul4_15 (.w_in(w_in[15*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_15));
wire signed [2*WIDTH_IN-1:0] interm_4_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd57)) mul4_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_16));
wire signed [2*WIDTH_IN-1:0] interm_4_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd33)) mul4_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_17));
wire signed [2*WIDTH_IN-1:0] interm_4_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul4_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_18));
wire signed [2*WIDTH_IN-1:0] interm_4_19;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd51)) mul4_19 (.w_in(w_in[19*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_19));
wire signed [2*WIDTH_IN-1:0] interm_4_21;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul4_21 (.w_in(w_in[21*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_21));
wire signed [2*WIDTH_IN-1:0] interm_4_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd24)) mul4_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_22));
wire signed [2*WIDTH_IN-1:0] interm_4_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd34)) mul4_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_23));
wire signed [2*WIDTH_IN-1:0] interm_4_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd46)) mul4_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_25));
wire signed [2*WIDTH_IN-1:0] interm_4_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd34)) mul4_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_26));
wire signed [2*WIDTH_IN-1:0] interm_4_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd29)) mul4_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_27));
wire signed [2*WIDTH_IN-1:0] interm_4_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd34)) mul4_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_29));


wire signed [21-1:0] bias_4 = 21'd26;

assign n4_out =
$signed(interm_4_0) +
$signed(interm_4_2) +
$signed(interm_4_3) +
$signed(interm_4_4) +
$signed(interm_4_5) +
$signed(interm_4_7) +
$signed(interm_4_8) +
$signed(interm_4_9) +
$signed(interm_4_10) +
$signed(interm_4_13) +
$signed(interm_4_14) +
$signed(interm_4_15) +
$signed(interm_4_16) +
$signed(interm_4_17) +
$signed(interm_4_18) +
$signed(interm_4_19) +
$signed(interm_4_21) +
$signed(interm_4_22) +
$signed(interm_4_23) +
$signed(interm_4_25) +
$signed(interm_4_26) +
$signed(interm_4_27) +
$signed(interm_4_29) +

$signed(bias_4);



// ---Neuro 5 ---
localparam NEURON_WIDTH_5 = 21;
wire signed [NEURON_WIDTH_5-1:0] n5_out;

wire signed [2*WIDTH_IN-1:0] interm_5_0;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd61)) mul5_0 (.w_in(w_in[0*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_0));
wire signed [2*WIDTH_IN-1:0] interm_5_1;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd36)) mul5_1 (.w_in(w_in[1*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_1));
wire signed [2*WIDTH_IN-1:0] interm_5_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd56)) mul5_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_3));
wire signed [2*WIDTH_IN-1:0] interm_5_4;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd34)) mul5_4 (.w_in(w_in[4*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_4));
wire signed [2*WIDTH_IN-1:0] interm_5_5;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd40)) mul5_5 (.w_in(w_in[5*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_5));
wire signed [2*WIDTH_IN-1:0] interm_5_6;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd26)) mul5_6 (.w_in(w_in[6*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_6));
wire signed [2*WIDTH_IN-1:0] interm_5_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul5_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_8));
wire signed [2*WIDTH_IN-1:0] interm_5_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd31)) mul5_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_9));
wire signed [2*WIDTH_IN-1:0] interm_5_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd51)) mul5_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_10));
wire signed [2*WIDTH_IN-1:0] interm_5_11;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd21)) mul5_11 (.w_in(w_in[11*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_11));
wire signed [2*WIDTH_IN-1:0] interm_5_12;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul5_12 (.w_in(w_in[12*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_12));
wire signed [2*WIDTH_IN-1:0] interm_5_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd54)) mul5_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_13));
wire signed [2*WIDTH_IN-1:0] interm_5_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd59)) mul5_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_14));
wire signed [2*WIDTH_IN-1:0] interm_5_15;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd55)) mul5_15 (.w_in(w_in[15*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_15));
wire signed [2*WIDTH_IN-1:0] interm_5_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd52)) mul5_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_16));
wire signed [2*WIDTH_IN-1:0] interm_5_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd32)) mul5_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_18));
wire signed [2*WIDTH_IN-1:0] interm_5_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd102)) mul5_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_20));
wire signed [2*WIDTH_IN-1:0] interm_5_21;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd116)) mul5_21 (.w_in(w_in[21*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_21));
wire signed [2*WIDTH_IN-1:0] interm_5_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul5_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_23));
wire signed [2*WIDTH_IN-1:0] interm_5_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd63)) mul5_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_25));
wire signed [2*WIDTH_IN-1:0] interm_5_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd42)) mul5_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_27));
wire signed [2*WIDTH_IN-1:0] interm_5_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul5_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_29));


wire signed [21-1:0] bias_5 = 21'd0;

assign n5_out =
$signed(interm_5_0) +
$signed(interm_5_1) +
$signed(interm_5_3) +
$signed(interm_5_4) +
$signed(interm_5_5) +
$signed(interm_5_6) +
$signed(interm_5_8) +
$signed(interm_5_9) +
$signed(interm_5_10) +
$signed(interm_5_11) +
$signed(interm_5_12) +
$signed(interm_5_13) +
$signed(interm_5_14) +
$signed(interm_5_15) +
$signed(interm_5_16) +
$signed(interm_5_18) +
$signed(interm_5_20) +
$signed(interm_5_21) +
$signed(interm_5_23) +
$signed(interm_5_25) +
$signed(interm_5_27) +
$signed(interm_5_29) +

$signed(bias_5);



// ---Neuro 6 ---
localparam NEURON_WIDTH_6 = 21;
wire signed [NEURON_WIDTH_6-1:0] n6_out;

wire signed [2*WIDTH_IN-1:0] interm_6_0;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul6_0 (.w_in(w_in[0*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_0));
wire signed [2*WIDTH_IN-1:0] interm_6_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul6_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_3));
wire signed [2*WIDTH_IN-1:0] interm_6_4;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd25)) mul6_4 (.w_in(w_in[4*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_4));
wire signed [2*WIDTH_IN-1:0] interm_6_5;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul6_5 (.w_in(w_in[5*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_5));
wire signed [2*WIDTH_IN-1:0] interm_6_6;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul6_6 (.w_in(w_in[6*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_6));
wire signed [2*WIDTH_IN-1:0] interm_6_7;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd62)) mul6_7 (.w_in(w_in[7*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_7));
wire signed [2*WIDTH_IN-1:0] interm_6_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul6_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_9));
wire signed [2*WIDTH_IN-1:0] interm_6_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd53)) mul6_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_10));
wire signed [2*WIDTH_IN-1:0] interm_6_11;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul6_11 (.w_in(w_in[11*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_11));
wire signed [2*WIDTH_IN-1:0] interm_6_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd67)) mul6_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_14));
wire signed [2*WIDTH_IN-1:0] interm_6_15;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd62)) mul6_15 (.w_in(w_in[15*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_15));
wire signed [2*WIDTH_IN-1:0] interm_6_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd49)) mul6_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_16));
wire signed [2*WIDTH_IN-1:0] interm_6_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul6_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_17));
wire signed [2*WIDTH_IN-1:0] interm_6_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul6_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_18));
wire signed [2*WIDTH_IN-1:0] interm_6_19;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd48)) mul6_19 (.w_in(w_in[19*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_19));
wire signed [2*WIDTH_IN-1:0] interm_6_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd49)) mul6_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_22));
wire signed [2*WIDTH_IN-1:0] interm_6_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd23)) mul6_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_23));
wire signed [2*WIDTH_IN-1:0] interm_6_24;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd42)) mul6_24 (.w_in(w_in[24*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_24));
wire signed [2*WIDTH_IN-1:0] interm_6_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd37)) mul6_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_25));
wire signed [2*WIDTH_IN-1:0] interm_6_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd119)) mul6_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_26));
wire signed [2*WIDTH_IN-1:0] interm_6_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd29)) mul6_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_27));
wire signed [2*WIDTH_IN-1:0] interm_6_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd106)) mul6_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_29));


wire signed [21-1:0] bias_6 = 21'd362;

assign n6_out =
$signed(interm_6_0) +
$signed(interm_6_3) +
$signed(interm_6_4) +
$signed(interm_6_5) +
$signed(interm_6_6) +
$signed(interm_6_7) +
$signed(interm_6_9) +
$signed(interm_6_10) +
$signed(interm_6_11) +
$signed(interm_6_14) +
$signed(interm_6_15) +
$signed(interm_6_16) +
$signed(interm_6_17) +
$signed(interm_6_18) +
$signed(interm_6_19) +
$signed(interm_6_22) +
$signed(interm_6_23) +
$signed(interm_6_24) +
$signed(interm_6_25) +
$signed(interm_6_26) +
$signed(interm_6_27) +
$signed(interm_6_29) +

$signed(bias_6);



// ---Neuro 7 ---
localparam NEURON_WIDTH_7 = 21;
wire signed [NEURON_WIDTH_7-1:0] n7_out;

wire signed [2*WIDTH_IN-1:0] interm_7_1;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd63)) mul7_1 (.w_in(w_in[1*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_1));
wire signed [2*WIDTH_IN-1:0] interm_7_2;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul7_2 (.w_in(w_in[2*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_2));
wire signed [2*WIDTH_IN-1:0] interm_7_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd55)) mul7_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_3));
wire signed [2*WIDTH_IN-1:0] interm_7_4;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul7_4 (.w_in(w_in[4*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_4));
wire signed [2*WIDTH_IN-1:0] interm_7_6;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul7_6 (.w_in(w_in[6*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_6));
wire signed [2*WIDTH_IN-1:0] interm_7_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul7_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_8));
wire signed [2*WIDTH_IN-1:0] interm_7_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd45)) mul7_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_10));
wire signed [2*WIDTH_IN-1:0] interm_7_11;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul7_11 (.w_in(w_in[11*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_11));
wire signed [2*WIDTH_IN-1:0] interm_7_12;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd33)) mul7_12 (.w_in(w_in[12*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_12));
wire signed [2*WIDTH_IN-1:0] interm_7_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd34)) mul7_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_13));
wire signed [2*WIDTH_IN-1:0] interm_7_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd67)) mul7_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_14));
wire signed [2*WIDTH_IN-1:0] interm_7_15;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul7_15 (.w_in(w_in[15*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_15));
wire signed [2*WIDTH_IN-1:0] interm_7_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd47)) mul7_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_16));
wire signed [2*WIDTH_IN-1:0] interm_7_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd56)) mul7_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_17));
wire signed [2*WIDTH_IN-1:0] interm_7_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd41)) mul7_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_20));
wire signed [2*WIDTH_IN-1:0] interm_7_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul7_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_22));
wire signed [2*WIDTH_IN-1:0] interm_7_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul7_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_23));
wire signed [2*WIDTH_IN-1:0] interm_7_24;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd121)) mul7_24 (.w_in(w_in[24*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_24));
wire signed [2*WIDTH_IN-1:0] interm_7_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd56)) mul7_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_26));
wire signed [2*WIDTH_IN-1:0] interm_7_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd29)) mul7_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_27));
wire signed [2*WIDTH_IN-1:0] interm_7_28;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd50)) mul7_28 (.w_in(w_in[28*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_28));
wire signed [2*WIDTH_IN-1:0] interm_7_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd46)) mul7_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_29));


wire signed [21-1:0] bias_7 = -21'd294;

assign n7_out =
$signed(interm_7_1) +
$signed(interm_7_2) +
$signed(interm_7_3) +
$signed(interm_7_4) +
$signed(interm_7_6) +
$signed(interm_7_8) +
$signed(interm_7_10) +
$signed(interm_7_11) +
$signed(interm_7_12) +
$signed(interm_7_13) +
$signed(interm_7_14) +
$signed(interm_7_15) +
$signed(interm_7_16) +
$signed(interm_7_17) +
$signed(interm_7_20) +
$signed(interm_7_22) +
$signed(interm_7_23) +
$signed(interm_7_24) +
$signed(interm_7_26) +
$signed(interm_7_27) +
$signed(interm_7_28) +
$signed(interm_7_29) +

$signed(bias_7);



// ---Neuro 8 ---
localparam NEURON_WIDTH_8 = 21;
wire signed [NEURON_WIDTH_8-1:0] n8_out;

wire signed [2*WIDTH_IN-1:0] interm_8_0;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul8_0 (.w_in(w_in[0*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_0));
wire signed [2*WIDTH_IN-1:0] interm_8_2;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul8_2 (.w_in(w_in[2*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_2));
wire signed [2*WIDTH_IN-1:0] interm_8_6;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd58)) mul8_6 (.w_in(w_in[6*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_6));
wire signed [2*WIDTH_IN-1:0] interm_8_7;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd25)) mul8_7 (.w_in(w_in[7*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_7));
wire signed [2*WIDTH_IN-1:0] interm_8_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd27)) mul8_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_8));
wire signed [2*WIDTH_IN-1:0] interm_8_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd30)) mul8_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_9));
wire signed [2*WIDTH_IN-1:0] interm_8_11;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd65)) mul8_11 (.w_in(w_in[11*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_11));
wire signed [2*WIDTH_IN-1:0] interm_8_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul8_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_13));
wire signed [2*WIDTH_IN-1:0] interm_8_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd42)) mul8_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_14));
wire signed [2*WIDTH_IN-1:0] interm_8_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd30)) mul8_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_16));
wire signed [2*WIDTH_IN-1:0] interm_8_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd31)) mul8_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_17));
wire signed [2*WIDTH_IN-1:0] interm_8_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd37)) mul8_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_20));
wire signed [2*WIDTH_IN-1:0] interm_8_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd59)) mul8_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_22));
wire signed [2*WIDTH_IN-1:0] interm_8_23;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd67)) mul8_23 (.w_in(w_in[23*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_23));
wire signed [2*WIDTH_IN-1:0] interm_8_25;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul8_25 (.w_in(w_in[25*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_25));
wire signed [2*WIDTH_IN-1:0] interm_8_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul8_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_26));
wire signed [2*WIDTH_IN-1:0] interm_8_27;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd26)) mul8_27 (.w_in(w_in[27*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_27));
wire signed [2*WIDTH_IN-1:0] interm_8_28;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd46)) mul8_28 (.w_in(w_in[28*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_28));
wire signed [2*WIDTH_IN-1:0] interm_8_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd50)) mul8_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_29));


wire signed [21-1:0] bias_8 = 21'd373;

assign n8_out =
$signed(interm_8_0) +
$signed(interm_8_2) +
$signed(interm_8_6) +
$signed(interm_8_7) +
$signed(interm_8_8) +
$signed(interm_8_9) +
$signed(interm_8_11) +
$signed(interm_8_13) +
$signed(interm_8_14) +
$signed(interm_8_16) +
$signed(interm_8_17) +
$signed(interm_8_20) +
$signed(interm_8_22) +
$signed(interm_8_23) +
$signed(interm_8_25) +
$signed(interm_8_26) +
$signed(interm_8_27) +
$signed(interm_8_28) +
$signed(interm_8_29) +

$signed(bias_8);



// ---Neuro 9 ---
localparam NEURON_WIDTH_9 = 21;
wire signed [NEURON_WIDTH_9-1:0] n9_out;

wire signed [2*WIDTH_IN-1:0] interm_9_2;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd33)) mul9_2 (.w_in(w_in[2*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_2));
wire signed [2*WIDTH_IN-1:0] interm_9_3;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd63)) mul9_3 (.w_in(w_in[3*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_3));
wire signed [2*WIDTH_IN-1:0] interm_9_6;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul9_6 (.w_in(w_in[6*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_6));
wire signed [2*WIDTH_IN-1:0] interm_9_8;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd56)) mul9_8 (.w_in(w_in[8*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_8));
wire signed [2*WIDTH_IN-1:0] interm_9_9;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd27)) mul9_9 (.w_in(w_in[9*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_9));
wire signed [2*WIDTH_IN-1:0] interm_9_10;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd51)) mul9_10 (.w_in(w_in[10*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_10));
wire signed [2*WIDTH_IN-1:0] interm_9_11;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd22)) mul9_11 (.w_in(w_in[11*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_11));
wire signed [2*WIDTH_IN-1:0] interm_9_12;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd62)) mul9_12 (.w_in(w_in[12*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_12));
wire signed [2*WIDTH_IN-1:0] interm_9_13;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd122)) mul9_13 (.w_in(w_in[13*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_13));
wire signed [2*WIDTH_IN-1:0] interm_9_14;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd28)) mul9_14 (.w_in(w_in[14*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_14));
wire signed [2*WIDTH_IN-1:0] interm_9_15;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd38)) mul9_15 (.w_in(w_in[15*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_15));
wire signed [2*WIDTH_IN-1:0] interm_9_16;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd31)) mul9_16 (.w_in(w_in[16*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_16));
wire signed [2*WIDTH_IN-1:0] interm_9_17;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul9_17 (.w_in(w_in[17*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_17));
wire signed [2*WIDTH_IN-1:0] interm_9_18;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd58)) mul9_18 (.w_in(w_in[18*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_18));
wire signed [2*WIDTH_IN-1:0] interm_9_19;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul9_19 (.w_in(w_in[19*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_19));
wire signed [2*WIDTH_IN-1:0] interm_9_20;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd36)) mul9_20 (.w_in(w_in[20*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_20));
wire signed [2*WIDTH_IN-1:0] interm_9_21;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd31)) mul9_21 (.w_in(w_in[21*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_21));
wire signed [2*WIDTH_IN-1:0] interm_9_22;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul9_22 (.w_in(w_in[22*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_22));
wire signed [2*WIDTH_IN-1:0] interm_9_24;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul9_24 (.w_in(w_in[24*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_24));
wire signed [2*WIDTH_IN-1:0] interm_9_26;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd52)) mul9_26 (.w_in(w_in[26*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_26));
wire signed [2*WIDTH_IN-1:0] interm_9_28;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd53)) mul9_28 (.w_in(w_in[28*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_28));
wire signed [2*WIDTH_IN-1:0] interm_9_29;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd30)) mul9_29 (.w_in(w_in[29*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_29));


wire signed [21-1:0] bias_9 = 21'd40;

assign n9_out =
$signed(interm_9_2) +
$signed(interm_9_3) +
$signed(interm_9_6) +
$signed(interm_9_8) +
$signed(interm_9_9) +
$signed(interm_9_10) +
$signed(interm_9_11) +
$signed(interm_9_12) +
$signed(interm_9_13) +
$signed(interm_9_14) +
$signed(interm_9_15) +
$signed(interm_9_16) +
$signed(interm_9_17) +
$signed(interm_9_18) +
$signed(interm_9_19) +
$signed(interm_9_20) +
$signed(interm_9_21) +
$signed(interm_9_22) +
$signed(interm_9_24) +
$signed(interm_9_26) +
$signed(interm_9_28) +
$signed(interm_9_29) +

$signed(bias_9);




/*
 * requantize outputs
 */
wire signed [WIDTH_OUT:0] requant_out [NUM_NEURONS];

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b011111001110011110110), .ZERO(9'd140), .SHIFT(29)) requant0 (.w_in(n0_out), .w_out(requant_out[0]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010010011001001110000), .ZERO(9'd140), .SHIFT(28)) requant1 (.w_in(n1_out), .w_out(requant_out[1]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010110001000111010111), .ZERO(9'd140), .SHIFT(28)) requant2 (.w_in(n2_out), .w_out(requant_out[2]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010010101011011111100), .ZERO(9'd140), .SHIFT(28)) requant3 (.w_in(n3_out), .w_out(requant_out[3]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010100110010101110000), .ZERO(9'd140), .SHIFT(28)) requant4 (.w_in(n4_out), .w_out(requant_out[4]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010101100011100001010), .ZERO(9'd140), .SHIFT(28)) requant5 (.w_in(n5_out), .w_out(requant_out[5]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010011100101000111000), .ZERO(9'd140), .SHIFT(28)) requant6 (.w_in(n6_out), .w_out(requant_out[6]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010010000101110111011), .ZERO(9'd140), .SHIFT(28)) requant7 (.w_in(n7_out), .w_out(requant_out[7]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010100111100100000101), .ZERO(9'd140), .SHIFT(28)) requant8 (.w_in(n8_out), .w_out(requant_out[8]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010110101011111110111), .ZERO(9'd140), .SHIFT(28)) requant9 (.w_in(n9_out), .w_out(requant_out[9]));



/*
 * ReLU
 */

RELU #(.WIDTH(WIDTH_OUT + 1)) relu0 (.w_in(requant_out[0]), .w_out(w_out[0*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu1 (.w_in(requant_out[1]), .w_out(w_out[1*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu2 (.w_in(requant_out[2]), .w_out(w_out[2*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu3 (.w_in(requant_out[3]), .w_out(w_out[3*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu4 (.w_in(requant_out[4]), .w_out(w_out[4*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu5 (.w_in(requant_out[5]), .w_out(w_out[5*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu6 (.w_in(requant_out[6]), .w_out(w_out[6*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu7 (.w_in(requant_out[7]), .w_out(w_out[7*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu8 (.w_in(requant_out[8]), .w_out(w_out[8*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu9 (.w_in(requant_out[9]), .w_out(w_out[9*WIDTH_OUT+:WIDTH_OUT]));



endmodule : FC2
