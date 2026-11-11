

module FC1 #(
    WIDTH_IN = 8,
    NUM_IN = 784,
    NUM_NEURONS = 30,
    WIDTH_OUT = 8
) (
    input wire signed [NUM_IN*WIDTH_IN-1:0] w_in,
    output wire signed [NUM_NEURONS*WIDTH_OUT-1:0] w_out
);

/*
 * Connect Neuros
 */


// ---Neuro 0 ---
localparam NEURON_WIDTH_0 = 22;
wire signed [NEURON_WIDTH_0-1:0] n0_out;

wire signed [2*WIDTH_IN-1:0] interm_0_95;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul0_95 (.w_in(w_in[95*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_95));
wire signed [2*WIDTH_IN-1:0] interm_0_96;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul0_96 (.w_in(w_in[96*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_96));
wire signed [2*WIDTH_IN-1:0] interm_0_97;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul0_97 (.w_in(w_in[97*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_97));
wire signed [2*WIDTH_IN-1:0] interm_0_120;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul0_120 (.w_in(w_in[120*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_120));
wire signed [2*WIDTH_IN-1:0] interm_0_155;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul0_155 (.w_in(w_in[155*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_155));
wire signed [2*WIDTH_IN-1:0] interm_0_219;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul0_219 (.w_in(w_in[219*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_219));
wire signed [2*WIDTH_IN-1:0] interm_0_248;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul0_248 (.w_in(w_in[248*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_248));
wire signed [2*WIDTH_IN-1:0] interm_0_249;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul0_249 (.w_in(w_in[249*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_249));
wire signed [2*WIDTH_IN-1:0] interm_0_286;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul0_286 (.w_in(w_in[286*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_286));
wire signed [2*WIDTH_IN-1:0] interm_0_288;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul0_288 (.w_in(w_in[288*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_288));
wire signed [2*WIDTH_IN-1:0] interm_0_291;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul0_291 (.w_in(w_in[291*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_291));
wire signed [2*WIDTH_IN-1:0] interm_0_292;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul0_292 (.w_in(w_in[292*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_292));
wire signed [2*WIDTH_IN-1:0] interm_0_297;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul0_297 (.w_in(w_in[297*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_297));
wire signed [2*WIDTH_IN-1:0] interm_0_304;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul0_304 (.w_in(w_in[304*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_304));
wire signed [2*WIDTH_IN-1:0] interm_0_313;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul0_313 (.w_in(w_in[313*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_313));
wire signed [2*WIDTH_IN-1:0] interm_0_317;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul0_317 (.w_in(w_in[317*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_317));
wire signed [2*WIDTH_IN-1:0] interm_0_318;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul0_318 (.w_in(w_in[318*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_318));
wire signed [2*WIDTH_IN-1:0] interm_0_319;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd86)) mul0_319 (.w_in(w_in[319*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_319));
wire signed [2*WIDTH_IN-1:0] interm_0_321;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul0_321 (.w_in(w_in[321*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_321));
wire signed [2*WIDTH_IN-1:0] interm_0_330;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul0_330 (.w_in(w_in[330*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_330));
wire signed [2*WIDTH_IN-1:0] interm_0_343;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd123)) mul0_343 (.w_in(w_in[343*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_343));
wire signed [2*WIDTH_IN-1:0] interm_0_344;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul0_344 (.w_in(w_in[344*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_344));
wire signed [2*WIDTH_IN-1:0] interm_0_347;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd115)) mul0_347 (.w_in(w_in[347*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_347));
wire signed [2*WIDTH_IN-1:0] interm_0_350;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd119)) mul0_350 (.w_in(w_in[350*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_350));
wire signed [2*WIDTH_IN-1:0] interm_0_369;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul0_369 (.w_in(w_in[369*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_369));
wire signed [2*WIDTH_IN-1:0] interm_0_374;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd117)) mul0_374 (.w_in(w_in[374*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_374));
wire signed [2*WIDTH_IN-1:0] interm_0_376;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul0_376 (.w_in(w_in[376*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_376));
wire signed [2*WIDTH_IN-1:0] interm_0_400;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul0_400 (.w_in(w_in[400*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_400));
wire signed [2*WIDTH_IN-1:0] interm_0_404;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul0_404 (.w_in(w_in[404*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_404));
wire signed [2*WIDTH_IN-1:0] interm_0_415;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul0_415 (.w_in(w_in[415*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_415));
wire signed [2*WIDTH_IN-1:0] interm_0_432;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul0_432 (.w_in(w_in[432*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_432));
wire signed [2*WIDTH_IN-1:0] interm_0_461;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd107)) mul0_461 (.w_in(w_in[461*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_461));
wire signed [2*WIDTH_IN-1:0] interm_0_510;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul0_510 (.w_in(w_in[510*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_510));
wire signed [2*WIDTH_IN-1:0] interm_0_511;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul0_511 (.w_in(w_in[511*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_511));
wire signed [2*WIDTH_IN-1:0] interm_0_513;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul0_513 (.w_in(w_in[513*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_513));
wire signed [2*WIDTH_IN-1:0] interm_0_522;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd79)) mul0_522 (.w_in(w_in[522*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_522));
wire signed [2*WIDTH_IN-1:0] interm_0_543;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul0_543 (.w_in(w_in[543*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_543));
wire signed [2*WIDTH_IN-1:0] interm_0_548;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul0_548 (.w_in(w_in[548*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_548));
wire signed [2*WIDTH_IN-1:0] interm_0_552;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul0_552 (.w_in(w_in[552*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_552));
wire signed [2*WIDTH_IN-1:0] interm_0_564;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd117)) mul0_564 (.w_in(w_in[564*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_564));
wire signed [2*WIDTH_IN-1:0] interm_0_621;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul0_621 (.w_in(w_in[621*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_621));
wire signed [2*WIDTH_IN-1:0] interm_0_683;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul0_683 (.w_in(w_in[683*WIDTH_IN+:WIDTH_IN]), .w_out(interm_0_683));


wire signed [22-1:0] bias_0 = -22'd8024;

assign n0_out =
$signed(interm_0_95) +
$signed(interm_0_96) +
$signed(interm_0_97) +
$signed(interm_0_120) +
$signed(interm_0_155) +
$signed(interm_0_219) +
$signed(interm_0_248) +
$signed(interm_0_249) +
$signed(interm_0_286) +
$signed(interm_0_288) +
$signed(interm_0_291) +
$signed(interm_0_292) +
$signed(interm_0_297) +
$signed(interm_0_304) +
$signed(interm_0_313) +
$signed(interm_0_317) +
$signed(interm_0_318) +
$signed(interm_0_319) +
$signed(interm_0_321) +
$signed(interm_0_330) +
$signed(interm_0_343) +
$signed(interm_0_344) +
$signed(interm_0_347) +
$signed(interm_0_350) +
$signed(interm_0_369) +
$signed(interm_0_374) +
$signed(interm_0_376) +
$signed(interm_0_400) +
$signed(interm_0_404) +
$signed(interm_0_415) +
$signed(interm_0_432) +
$signed(interm_0_461) +
$signed(interm_0_510) +
$signed(interm_0_511) +
$signed(interm_0_513) +
$signed(interm_0_522) +
$signed(interm_0_543) +
$signed(interm_0_548) +
$signed(interm_0_552) +
$signed(interm_0_564) +
$signed(interm_0_621) +
$signed(interm_0_683) +

$signed(bias_0);



// ---Neuro 1 ---
localparam NEURON_WIDTH_1 = 21;
wire signed [NEURON_WIDTH_1-1:0] n1_out;

wire signed [2*WIDTH_IN-1:0] interm_1_145;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul1_145 (.w_in(w_in[145*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_145));
wire signed [2*WIDTH_IN-1:0] interm_1_159;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul1_159 (.w_in(w_in[159*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_159));
wire signed [2*WIDTH_IN-1:0] interm_1_174;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd1)) mul1_174 (.w_in(w_in[174*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_174));
wire signed [2*WIDTH_IN-1:0] interm_1_242;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul1_242 (.w_in(w_in[242*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_242));
wire signed [2*WIDTH_IN-1:0] interm_1_262;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul1_262 (.w_in(w_in[262*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_262));
wire signed [2*WIDTH_IN-1:0] interm_1_315;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul1_315 (.w_in(w_in[315*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_315));
wire signed [2*WIDTH_IN-1:0] interm_1_378;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd112)) mul1_378 (.w_in(w_in[378*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_378));
wire signed [2*WIDTH_IN-1:0] interm_1_397;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul1_397 (.w_in(w_in[397*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_397));
wire signed [2*WIDTH_IN-1:0] interm_1_431;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul1_431 (.w_in(w_in[431*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_431));
wire signed [2*WIDTH_IN-1:0] interm_1_432;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul1_432 (.w_in(w_in[432*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_432));
wire signed [2*WIDTH_IN-1:0] interm_1_434;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul1_434 (.w_in(w_in[434*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_434));
wire signed [2*WIDTH_IN-1:0] interm_1_444;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul1_444 (.w_in(w_in[444*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_444));
wire signed [2*WIDTH_IN-1:0] interm_1_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul1_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_459));
wire signed [2*WIDTH_IN-1:0] interm_1_460;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul1_460 (.w_in(w_in[460*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_460));
wire signed [2*WIDTH_IN-1:0] interm_1_487;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul1_487 (.w_in(w_in[487*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_487));
wire signed [2*WIDTH_IN-1:0] interm_1_490;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul1_490 (.w_in(w_in[490*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_490));
wire signed [2*WIDTH_IN-1:0] interm_1_548;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd87)) mul1_548 (.w_in(w_in[548*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_548));
wire signed [2*WIDTH_IN-1:0] interm_1_551;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul1_551 (.w_in(w_in[551*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_551));
wire signed [2*WIDTH_IN-1:0] interm_1_572;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd122)) mul1_572 (.w_in(w_in[572*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_572));
wire signed [2*WIDTH_IN-1:0] interm_1_657;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd65)) mul1_657 (.w_in(w_in[657*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_657));
wire signed [2*WIDTH_IN-1:0] interm_1_664;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul1_664 (.w_in(w_in[664*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_664));
wire signed [2*WIDTH_IN-1:0] interm_1_678;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul1_678 (.w_in(w_in[678*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_678));
wire signed [2*WIDTH_IN-1:0] interm_1_708;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd125)) mul1_708 (.w_in(w_in[708*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_708));
wire signed [2*WIDTH_IN-1:0] interm_1_710;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd124)) mul1_710 (.w_in(w_in[710*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_710));
wire signed [2*WIDTH_IN-1:0] interm_1_714;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul1_714 (.w_in(w_in[714*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_714));
wire signed [2*WIDTH_IN-1:0] interm_1_716;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul1_716 (.w_in(w_in[716*WIDTH_IN+:WIDTH_IN]), .w_out(interm_1_716));


wire signed [21-1:0] bias_1 = 21'd4395;

assign n1_out =
$signed(interm_1_145) +
$signed(interm_1_159) +
$signed(interm_1_174) +
$signed(interm_1_242) +
$signed(interm_1_262) +
$signed(interm_1_315) +
$signed(interm_1_378) +
$signed(interm_1_397) +
$signed(interm_1_431) +
$signed(interm_1_432) +
$signed(interm_1_434) +
$signed(interm_1_444) +
$signed(interm_1_459) +
$signed(interm_1_460) +
$signed(interm_1_487) +
$signed(interm_1_490) +
$signed(interm_1_548) +
$signed(interm_1_551) +
$signed(interm_1_572) +
$signed(interm_1_657) +
$signed(interm_1_664) +
$signed(interm_1_678) +
$signed(interm_1_708) +
$signed(interm_1_710) +
$signed(interm_1_714) +
$signed(interm_1_716) +

$signed(bias_1);



// ---Neuro 2 ---
localparam NEURON_WIDTH_2 = 22;
wire signed [NEURON_WIDTH_2-1:0] n2_out;

wire signed [2*WIDTH_IN-1:0] interm_2_176;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul2_176 (.w_in(w_in[176*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_176));
wire signed [2*WIDTH_IN-1:0] interm_2_230;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul2_230 (.w_in(w_in[230*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_230));
wire signed [2*WIDTH_IN-1:0] interm_2_260;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul2_260 (.w_in(w_in[260*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_260));
wire signed [2*WIDTH_IN-1:0] interm_2_274;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul2_274 (.w_in(w_in[274*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_274));
wire signed [2*WIDTH_IN-1:0] interm_2_302;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul2_302 (.w_in(w_in[302*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_302));
wire signed [2*WIDTH_IN-1:0] interm_2_322;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd117)) mul2_322 (.w_in(w_in[322*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_322));
wire signed [2*WIDTH_IN-1:0] interm_2_331;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul2_331 (.w_in(w_in[331*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_331));
wire signed [2*WIDTH_IN-1:0] interm_2_332;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul2_332 (.w_in(w_in[332*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_332));
wire signed [2*WIDTH_IN-1:0] interm_2_379;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul2_379 (.w_in(w_in[379*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_379));
wire signed [2*WIDTH_IN-1:0] interm_2_407;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd118)) mul2_407 (.w_in(w_in[407*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_407));
wire signed [2*WIDTH_IN-1:0] interm_2_434;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul2_434 (.w_in(w_in[434*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_434));
wire signed [2*WIDTH_IN-1:0] interm_2_453;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul2_453 (.w_in(w_in[453*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_453));
wire signed [2*WIDTH_IN-1:0] interm_2_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul2_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_459));
wire signed [2*WIDTH_IN-1:0] interm_2_468;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul2_468 (.w_in(w_in[468*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_468));
wire signed [2*WIDTH_IN-1:0] interm_2_482;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd113)) mul2_482 (.w_in(w_in[482*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_482));
wire signed [2*WIDTH_IN-1:0] interm_2_484;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd106)) mul2_484 (.w_in(w_in[484*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_484));
wire signed [2*WIDTH_IN-1:0] interm_2_486;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul2_486 (.w_in(w_in[486*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_486));
wire signed [2*WIDTH_IN-1:0] interm_2_487;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul2_487 (.w_in(w_in[487*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_487));
wire signed [2*WIDTH_IN-1:0] interm_2_492;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd116)) mul2_492 (.w_in(w_in[492*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_492));
wire signed [2*WIDTH_IN-1:0] interm_2_513;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd103)) mul2_513 (.w_in(w_in[513*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_513));
wire signed [2*WIDTH_IN-1:0] interm_2_516;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd87)) mul2_516 (.w_in(w_in[516*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_516));
wire signed [2*WIDTH_IN-1:0] interm_2_539;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul2_539 (.w_in(w_in[539*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_539));
wire signed [2*WIDTH_IN-1:0] interm_2_543;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd102)) mul2_543 (.w_in(w_in[543*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_543));
wire signed [2*WIDTH_IN-1:0] interm_2_564;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd116)) mul2_564 (.w_in(w_in[564*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_564));
wire signed [2*WIDTH_IN-1:0] interm_2_569;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul2_569 (.w_in(w_in[569*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_569));
wire signed [2*WIDTH_IN-1:0] interm_2_576;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul2_576 (.w_in(w_in[576*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_576));
wire signed [2*WIDTH_IN-1:0] interm_2_578;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd122)) mul2_578 (.w_in(w_in[578*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_578));
wire signed [2*WIDTH_IN-1:0] interm_2_608;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd117)) mul2_608 (.w_in(w_in[608*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_608));
wire signed [2*WIDTH_IN-1:0] interm_2_610;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul2_610 (.w_in(w_in[610*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_610));
wire signed [2*WIDTH_IN-1:0] interm_2_687;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul2_687 (.w_in(w_in[687*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_687));
wire signed [2*WIDTH_IN-1:0] interm_2_709;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul2_709 (.w_in(w_in[709*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_709));
wire signed [2*WIDTH_IN-1:0] interm_2_712;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul2_712 (.w_in(w_in[712*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_712));
wire signed [2*WIDTH_IN-1:0] interm_2_714;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul2_714 (.w_in(w_in[714*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_714));
wire signed [2*WIDTH_IN-1:0] interm_2_733;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul2_733 (.w_in(w_in[733*WIDTH_IN+:WIDTH_IN]), .w_out(interm_2_733));


wire signed [22-1:0] bias_2 = -22'd8815;

assign n2_out =
$signed(interm_2_176) +
$signed(interm_2_230) +
$signed(interm_2_260) +
$signed(interm_2_274) +
$signed(interm_2_302) +
$signed(interm_2_322) +
$signed(interm_2_331) +
$signed(interm_2_332) +
$signed(interm_2_379) +
$signed(interm_2_407) +
$signed(interm_2_434) +
$signed(interm_2_453) +
$signed(interm_2_459) +
$signed(interm_2_468) +
$signed(interm_2_482) +
$signed(interm_2_484) +
$signed(interm_2_486) +
$signed(interm_2_487) +
$signed(interm_2_492) +
$signed(interm_2_513) +
$signed(interm_2_516) +
$signed(interm_2_539) +
$signed(interm_2_543) +
$signed(interm_2_564) +
$signed(interm_2_569) +
$signed(interm_2_576) +
$signed(interm_2_578) +
$signed(interm_2_608) +
$signed(interm_2_610) +
$signed(interm_2_687) +
$signed(interm_2_709) +
$signed(interm_2_712) +
$signed(interm_2_714) +
$signed(interm_2_733) +

$signed(bias_2);



// ---Neuro 3 ---
localparam NEURON_WIDTH_3 = 22;
wire signed [NEURON_WIDTH_3-1:0] n3_out;

wire signed [2*WIDTH_IN-1:0] interm_3_119;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul3_119 (.w_in(w_in[119*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_119));
wire signed [2*WIDTH_IN-1:0] interm_3_120;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul3_120 (.w_in(w_in[120*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_120));
wire signed [2*WIDTH_IN-1:0] interm_3_123;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul3_123 (.w_in(w_in[123*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_123));
wire signed [2*WIDTH_IN-1:0] interm_3_135;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul3_135 (.w_in(w_in[135*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_135));
wire signed [2*WIDTH_IN-1:0] interm_3_150;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul3_150 (.w_in(w_in[150*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_150));
wire signed [2*WIDTH_IN-1:0] interm_3_157;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul3_157 (.w_in(w_in[157*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_157));
wire signed [2*WIDTH_IN-1:0] interm_3_159;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd125)) mul3_159 (.w_in(w_in[159*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_159));
wire signed [2*WIDTH_IN-1:0] interm_3_163;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul3_163 (.w_in(w_in[163*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_163));
wire signed [2*WIDTH_IN-1:0] interm_3_164;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul3_164 (.w_in(w_in[164*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_164));
wire signed [2*WIDTH_IN-1:0] interm_3_229;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul3_229 (.w_in(w_in[229*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_229));
wire signed [2*WIDTH_IN-1:0] interm_3_237;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd118)) mul3_237 (.w_in(w_in[237*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_237));
wire signed [2*WIDTH_IN-1:0] interm_3_239;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul3_239 (.w_in(w_in[239*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_239));
wire signed [2*WIDTH_IN-1:0] interm_3_241;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul3_241 (.w_in(w_in[241*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_241));
wire signed [2*WIDTH_IN-1:0] interm_3_265;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul3_265 (.w_in(w_in[265*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_265));
wire signed [2*WIDTH_IN-1:0] interm_3_266;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul3_266 (.w_in(w_in[266*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_266));
wire signed [2*WIDTH_IN-1:0] interm_3_267;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul3_267 (.w_in(w_in[267*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_267));
wire signed [2*WIDTH_IN-1:0] interm_3_269;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul3_269 (.w_in(w_in[269*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_269));
wire signed [2*WIDTH_IN-1:0] interm_3_270;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd77)) mul3_270 (.w_in(w_in[270*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_270));
wire signed [2*WIDTH_IN-1:0] interm_3_274;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul3_274 (.w_in(w_in[274*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_274));
wire signed [2*WIDTH_IN-1:0] interm_3_276;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd125)) mul3_276 (.w_in(w_in[276*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_276));
wire signed [2*WIDTH_IN-1:0] interm_3_289;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul3_289 (.w_in(w_in[289*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_289));
wire signed [2*WIDTH_IN-1:0] interm_3_294;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul3_294 (.w_in(w_in[294*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_294));
wire signed [2*WIDTH_IN-1:0] interm_3_296;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul3_296 (.w_in(w_in[296*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_296));
wire signed [2*WIDTH_IN-1:0] interm_3_299;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul3_299 (.w_in(w_in[299*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_299));
wire signed [2*WIDTH_IN-1:0] interm_3_304;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul3_304 (.w_in(w_in[304*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_304));
wire signed [2*WIDTH_IN-1:0] interm_3_328;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul3_328 (.w_in(w_in[328*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_328));
wire signed [2*WIDTH_IN-1:0] interm_3_354;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul3_354 (.w_in(w_in[354*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_354));
wire signed [2*WIDTH_IN-1:0] interm_3_434;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul3_434 (.w_in(w_in[434*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_434));
wire signed [2*WIDTH_IN-1:0] interm_3_536;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul3_536 (.w_in(w_in[536*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_536));
wire signed [2*WIDTH_IN-1:0] interm_3_571;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul3_571 (.w_in(w_in[571*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_571));
wire signed [2*WIDTH_IN-1:0] interm_3_602;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul3_602 (.w_in(w_in[602*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_602));
wire signed [2*WIDTH_IN-1:0] interm_3_605;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul3_605 (.w_in(w_in[605*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_605));
wire signed [2*WIDTH_IN-1:0] interm_3_662;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul3_662 (.w_in(w_in[662*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_662));
wire signed [2*WIDTH_IN-1:0] interm_3_678;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul3_678 (.w_in(w_in[678*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_678));
wire signed [2*WIDTH_IN-1:0] interm_3_706;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd79)) mul3_706 (.w_in(w_in[706*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_706));
wire signed [2*WIDTH_IN-1:0] interm_3_741;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul3_741 (.w_in(w_in[741*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_741));
wire signed [2*WIDTH_IN-1:0] interm_3_742;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd102)) mul3_742 (.w_in(w_in[742*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_742));
wire signed [2*WIDTH_IN-1:0] interm_3_744;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul3_744 (.w_in(w_in[744*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_744));
wire signed [2*WIDTH_IN-1:0] interm_3_747;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul3_747 (.w_in(w_in[747*WIDTH_IN+:WIDTH_IN]), .w_out(interm_3_747));


wire signed [22-1:0] bias_3 = -22'd8159;

assign n3_out =
$signed(interm_3_119) +
$signed(interm_3_120) +
$signed(interm_3_123) +
$signed(interm_3_135) +
$signed(interm_3_150) +
$signed(interm_3_157) +
$signed(interm_3_159) +
$signed(interm_3_163) +
$signed(interm_3_164) +
$signed(interm_3_229) +
$signed(interm_3_237) +
$signed(interm_3_239) +
$signed(interm_3_241) +
$signed(interm_3_265) +
$signed(interm_3_266) +
$signed(interm_3_267) +
$signed(interm_3_269) +
$signed(interm_3_270) +
$signed(interm_3_274) +
$signed(interm_3_276) +
$signed(interm_3_289) +
$signed(interm_3_294) +
$signed(interm_3_296) +
$signed(interm_3_299) +
$signed(interm_3_304) +
$signed(interm_3_328) +
$signed(interm_3_354) +
$signed(interm_3_434) +
$signed(interm_3_536) +
$signed(interm_3_571) +
$signed(interm_3_602) +
$signed(interm_3_605) +
$signed(interm_3_662) +
$signed(interm_3_678) +
$signed(interm_3_706) +
$signed(interm_3_741) +
$signed(interm_3_742) +
$signed(interm_3_744) +
$signed(interm_3_747) +

$signed(bias_3);



// ---Neuro 4 ---
localparam NEURON_WIDTH_4 = 22;
wire signed [NEURON_WIDTH_4-1:0] n4_out;

wire signed [2*WIDTH_IN-1:0] interm_4_159;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul4_159 (.w_in(w_in[159*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_159));
wire signed [2*WIDTH_IN-1:0] interm_4_203;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul4_203 (.w_in(w_in[203*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_203));
wire signed [2*WIDTH_IN-1:0] interm_4_205;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd64)) mul4_205 (.w_in(w_in[205*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_205));
wire signed [2*WIDTH_IN-1:0] interm_4_303;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul4_303 (.w_in(w_in[303*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_303));
wire signed [2*WIDTH_IN-1:0] interm_4_323;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd105)) mul4_323 (.w_in(w_in[323*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_323));
wire signed [2*WIDTH_IN-1:0] interm_4_350;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul4_350 (.w_in(w_in[350*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_350));
wire signed [2*WIDTH_IN-1:0] interm_4_355;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul4_355 (.w_in(w_in[355*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_355));
wire signed [2*WIDTH_IN-1:0] interm_4_385;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul4_385 (.w_in(w_in[385*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_385));
wire signed [2*WIDTH_IN-1:0] interm_4_408;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul4_408 (.w_in(w_in[408*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_408));
wire signed [2*WIDTH_IN-1:0] interm_4_435;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul4_435 (.w_in(w_in[435*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_435));
wire signed [2*WIDTH_IN-1:0] interm_4_469;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul4_469 (.w_in(w_in[469*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_469));
wire signed [2*WIDTH_IN-1:0] interm_4_487;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul4_487 (.w_in(w_in[487*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_487));
wire signed [2*WIDTH_IN-1:0] interm_4_499;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd87)) mul4_499 (.w_in(w_in[499*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_499));
wire signed [2*WIDTH_IN-1:0] interm_4_516;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul4_516 (.w_in(w_in[516*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_516));
wire signed [2*WIDTH_IN-1:0] interm_4_517;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul4_517 (.w_in(w_in[517*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_517));
wire signed [2*WIDTH_IN-1:0] interm_4_527;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul4_527 (.w_in(w_in[527*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_527));
wire signed [2*WIDTH_IN-1:0] interm_4_548;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul4_548 (.w_in(w_in[548*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_548));
wire signed [2*WIDTH_IN-1:0] interm_4_570;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul4_570 (.w_in(w_in[570*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_570));
wire signed [2*WIDTH_IN-1:0] interm_4_577;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul4_577 (.w_in(w_in[577*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_577));
wire signed [2*WIDTH_IN-1:0] interm_4_578;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul4_578 (.w_in(w_in[578*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_578));
wire signed [2*WIDTH_IN-1:0] interm_4_582;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul4_582 (.w_in(w_in[582*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_582));
wire signed [2*WIDTH_IN-1:0] interm_4_596;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul4_596 (.w_in(w_in[596*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_596));
wire signed [2*WIDTH_IN-1:0] interm_4_601;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul4_601 (.w_in(w_in[601*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_601));
wire signed [2*WIDTH_IN-1:0] interm_4_602;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul4_602 (.w_in(w_in[602*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_602));
wire signed [2*WIDTH_IN-1:0] interm_4_610;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul4_610 (.w_in(w_in[610*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_610));
wire signed [2*WIDTH_IN-1:0] interm_4_624;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul4_624 (.w_in(w_in[624*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_624));
wire signed [2*WIDTH_IN-1:0] interm_4_627;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul4_627 (.w_in(w_in[627*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_627));
wire signed [2*WIDTH_IN-1:0] interm_4_634;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul4_634 (.w_in(w_in[634*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_634));
wire signed [2*WIDTH_IN-1:0] interm_4_637;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul4_637 (.w_in(w_in[637*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_637));
wire signed [2*WIDTH_IN-1:0] interm_4_638;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul4_638 (.w_in(w_in[638*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_638));
wire signed [2*WIDTH_IN-1:0] interm_4_661;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul4_661 (.w_in(w_in[661*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_661));
wire signed [2*WIDTH_IN-1:0] interm_4_663;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd111)) mul4_663 (.w_in(w_in[663*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_663));
wire signed [2*WIDTH_IN-1:0] interm_4_685;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd68)) mul4_685 (.w_in(w_in[685*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_685));
wire signed [2*WIDTH_IN-1:0] interm_4_686;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd75)) mul4_686 (.w_in(w_in[686*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_686));
wire signed [2*WIDTH_IN-1:0] interm_4_688;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul4_688 (.w_in(w_in[688*WIDTH_IN+:WIDTH_IN]), .w_out(interm_4_688));


wire signed [22-1:0] bias_4 = 22'd28199;

assign n4_out =
$signed(interm_4_159) +
$signed(interm_4_203) +
$signed(interm_4_205) +
$signed(interm_4_303) +
$signed(interm_4_323) +
$signed(interm_4_350) +
$signed(interm_4_355) +
$signed(interm_4_385) +
$signed(interm_4_408) +
$signed(interm_4_435) +
$signed(interm_4_469) +
$signed(interm_4_487) +
$signed(interm_4_499) +
$signed(interm_4_516) +
$signed(interm_4_517) +
$signed(interm_4_527) +
$signed(interm_4_548) +
$signed(interm_4_570) +
$signed(interm_4_577) +
$signed(interm_4_578) +
$signed(interm_4_582) +
$signed(interm_4_596) +
$signed(interm_4_601) +
$signed(interm_4_602) +
$signed(interm_4_610) +
$signed(interm_4_624) +
$signed(interm_4_627) +
$signed(interm_4_634) +
$signed(interm_4_637) +
$signed(interm_4_638) +
$signed(interm_4_661) +
$signed(interm_4_663) +
$signed(interm_4_685) +
$signed(interm_4_686) +
$signed(interm_4_688) +

$signed(bias_4);



// ---Neuro 5 ---
localparam NEURON_WIDTH_5 = 21;
wire signed [NEURON_WIDTH_5-1:0] n5_out;

wire signed [2*WIDTH_IN-1:0] interm_5_67;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul5_67 (.w_in(w_in[67*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_67));
wire signed [2*WIDTH_IN-1:0] interm_5_73;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul5_73 (.w_in(w_in[73*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_73));
wire signed [2*WIDTH_IN-1:0] interm_5_93;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul5_93 (.w_in(w_in[93*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_93));
wire signed [2*WIDTH_IN-1:0] interm_5_94;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul5_94 (.w_in(w_in[94*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_94));
wire signed [2*WIDTH_IN-1:0] interm_5_97;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul5_97 (.w_in(w_in[97*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_97));
wire signed [2*WIDTH_IN-1:0] interm_5_124;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul5_124 (.w_in(w_in[124*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_124));
wire signed [2*WIDTH_IN-1:0] interm_5_205;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul5_205 (.w_in(w_in[205*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_205));
wire signed [2*WIDTH_IN-1:0] interm_5_242;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd113)) mul5_242 (.w_in(w_in[242*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_242));
wire signed [2*WIDTH_IN-1:0] interm_5_246;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul5_246 (.w_in(w_in[246*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_246));
wire signed [2*WIDTH_IN-1:0] interm_5_268;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd72)) mul5_268 (.w_in(w_in[268*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_268));
wire signed [2*WIDTH_IN-1:0] interm_5_269;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul5_269 (.w_in(w_in[269*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_269));
wire signed [2*WIDTH_IN-1:0] interm_5_272;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd121)) mul5_272 (.w_in(w_in[272*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_272));
wire signed [2*WIDTH_IN-1:0] interm_5_298;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul5_298 (.w_in(w_in[298*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_298));
wire signed [2*WIDTH_IN-1:0] interm_5_322;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul5_322 (.w_in(w_in[322*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_322));
wire signed [2*WIDTH_IN-1:0] interm_5_325;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul5_325 (.w_in(w_in[325*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_325));
wire signed [2*WIDTH_IN-1:0] interm_5_332;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul5_332 (.w_in(w_in[332*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_332));
wire signed [2*WIDTH_IN-1:0] interm_5_340;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul5_340 (.w_in(w_in[340*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_340));
wire signed [2*WIDTH_IN-1:0] interm_5_375;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul5_375 (.w_in(w_in[375*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_375));
wire signed [2*WIDTH_IN-1:0] interm_5_382;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul5_382 (.w_in(w_in[382*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_382));
wire signed [2*WIDTH_IN-1:0] interm_5_400;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul5_400 (.w_in(w_in[400*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_400));
wire signed [2*WIDTH_IN-1:0] interm_5_405;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd76)) mul5_405 (.w_in(w_in[405*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_405));
wire signed [2*WIDTH_IN-1:0] interm_5_513;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd116)) mul5_513 (.w_in(w_in[513*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_513));
wire signed [2*WIDTH_IN-1:0] interm_5_528;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul5_528 (.w_in(w_in[528*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_528));
wire signed [2*WIDTH_IN-1:0] interm_5_612;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul5_612 (.w_in(w_in[612*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_612));
wire signed [2*WIDTH_IN-1:0] interm_5_747;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul5_747 (.w_in(w_in[747*WIDTH_IN+:WIDTH_IN]), .w_out(interm_5_747));


wire signed [21-1:0] bias_5 = 21'd9084;

assign n5_out =
$signed(interm_5_67) +
$signed(interm_5_73) +
$signed(interm_5_93) +
$signed(interm_5_94) +
$signed(interm_5_97) +
$signed(interm_5_124) +
$signed(interm_5_205) +
$signed(interm_5_242) +
$signed(interm_5_246) +
$signed(interm_5_268) +
$signed(interm_5_269) +
$signed(interm_5_272) +
$signed(interm_5_298) +
$signed(interm_5_322) +
$signed(interm_5_325) +
$signed(interm_5_332) +
$signed(interm_5_340) +
$signed(interm_5_375) +
$signed(interm_5_382) +
$signed(interm_5_400) +
$signed(interm_5_405) +
$signed(interm_5_513) +
$signed(interm_5_528) +
$signed(interm_5_612) +
$signed(interm_5_747) +

$signed(bias_5);



// ---Neuro 6 ---
localparam NEURON_WIDTH_6 = 22;
wire signed [NEURON_WIDTH_6-1:0] n6_out;

wire signed [2*WIDTH_IN-1:0] interm_6_178;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul6_178 (.w_in(w_in[178*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_178));
wire signed [2*WIDTH_IN-1:0] interm_6_189;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd75)) mul6_189 (.w_in(w_in[189*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_189));
wire signed [2*WIDTH_IN-1:0] interm_6_209;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul6_209 (.w_in(w_in[209*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_209));
wire signed [2*WIDTH_IN-1:0] interm_6_212;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul6_212 (.w_in(w_in[212*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_212));
wire signed [2*WIDTH_IN-1:0] interm_6_215;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul6_215 (.w_in(w_in[215*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_215));
wire signed [2*WIDTH_IN-1:0] interm_6_258;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul6_258 (.w_in(w_in[258*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_258));
wire signed [2*WIDTH_IN-1:0] interm_6_290;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd71)) mul6_290 (.w_in(w_in[290*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_290));
wire signed [2*WIDTH_IN-1:0] interm_6_341;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd106)) mul6_341 (.w_in(w_in[341*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_341));
wire signed [2*WIDTH_IN-1:0] interm_6_376;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd113)) mul6_376 (.w_in(w_in[376*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_376));
wire signed [2*WIDTH_IN-1:0] interm_6_401;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul6_401 (.w_in(w_in[401*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_401));
wire signed [2*WIDTH_IN-1:0] interm_6_404;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul6_404 (.w_in(w_in[404*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_404));
wire signed [2*WIDTH_IN-1:0] interm_6_429;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul6_429 (.w_in(w_in[429*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_429));
wire signed [2*WIDTH_IN-1:0] interm_6_433;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul6_433 (.w_in(w_in[433*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_433));
wire signed [2*WIDTH_IN-1:0] interm_6_444;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul6_444 (.w_in(w_in[444*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_444));
wire signed [2*WIDTH_IN-1:0] interm_6_445;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd73)) mul6_445 (.w_in(w_in[445*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_445));
wire signed [2*WIDTH_IN-1:0] interm_6_455;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul6_455 (.w_in(w_in[455*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_455));
wire signed [2*WIDTH_IN-1:0] interm_6_462;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul6_462 (.w_in(w_in[462*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_462));
wire signed [2*WIDTH_IN-1:0] interm_6_473;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd77)) mul6_473 (.w_in(w_in[473*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_473));
wire signed [2*WIDTH_IN-1:0] interm_6_509;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul6_509 (.w_in(w_in[509*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_509));
wire signed [2*WIDTH_IN-1:0] interm_6_517;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul6_517 (.w_in(w_in[517*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_517));
wire signed [2*WIDTH_IN-1:0] interm_6_547;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul6_547 (.w_in(w_in[547*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_547));
wire signed [2*WIDTH_IN-1:0] interm_6_548;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul6_548 (.w_in(w_in[548*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_548));
wire signed [2*WIDTH_IN-1:0] interm_6_555;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul6_555 (.w_in(w_in[555*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_555));
wire signed [2*WIDTH_IN-1:0] interm_6_650;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul6_650 (.w_in(w_in[650*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_650));
wire signed [2*WIDTH_IN-1:0] interm_6_656;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul6_656 (.w_in(w_in[656*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_656));
wire signed [2*WIDTH_IN-1:0] interm_6_657;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul6_657 (.w_in(w_in[657*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_657));
wire signed [2*WIDTH_IN-1:0] interm_6_659;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul6_659 (.w_in(w_in[659*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_659));
wire signed [2*WIDTH_IN-1:0] interm_6_661;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd112)) mul6_661 (.w_in(w_in[661*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_661));
wire signed [2*WIDTH_IN-1:0] interm_6_662;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul6_662 (.w_in(w_in[662*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_662));
wire signed [2*WIDTH_IN-1:0] interm_6_664;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul6_664 (.w_in(w_in[664*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_664));
wire signed [2*WIDTH_IN-1:0] interm_6_679;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul6_679 (.w_in(w_in[679*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_679));
wire signed [2*WIDTH_IN-1:0] interm_6_684;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd75)) mul6_684 (.w_in(w_in[684*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_684));
wire signed [2*WIDTH_IN-1:0] interm_6_709;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd102)) mul6_709 (.w_in(w_in[709*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_709));
wire signed [2*WIDTH_IN-1:0] interm_6_710;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd119)) mul6_710 (.w_in(w_in[710*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_710));
wire signed [2*WIDTH_IN-1:0] interm_6_713;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul6_713 (.w_in(w_in[713*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_713));
wire signed [2*WIDTH_IN-1:0] interm_6_714;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul6_714 (.w_in(w_in[714*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_714));
wire signed [2*WIDTH_IN-1:0] interm_6_716;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul6_716 (.w_in(w_in[716*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_716));
wire signed [2*WIDTH_IN-1:0] interm_6_717;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul6_717 (.w_in(w_in[717*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_717));
wire signed [2*WIDTH_IN-1:0] interm_6_719;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul6_719 (.w_in(w_in[719*WIDTH_IN+:WIDTH_IN]), .w_out(interm_6_719));


wire signed [22-1:0] bias_6 = 22'd33942;

assign n6_out =
$signed(interm_6_178) +
$signed(interm_6_189) +
$signed(interm_6_209) +
$signed(interm_6_212) +
$signed(interm_6_215) +
$signed(interm_6_258) +
$signed(interm_6_290) +
$signed(interm_6_341) +
$signed(interm_6_376) +
$signed(interm_6_401) +
$signed(interm_6_404) +
$signed(interm_6_429) +
$signed(interm_6_433) +
$signed(interm_6_444) +
$signed(interm_6_445) +
$signed(interm_6_455) +
$signed(interm_6_462) +
$signed(interm_6_473) +
$signed(interm_6_509) +
$signed(interm_6_517) +
$signed(interm_6_547) +
$signed(interm_6_548) +
$signed(interm_6_555) +
$signed(interm_6_650) +
$signed(interm_6_656) +
$signed(interm_6_657) +
$signed(interm_6_659) +
$signed(interm_6_661) +
$signed(interm_6_662) +
$signed(interm_6_664) +
$signed(interm_6_679) +
$signed(interm_6_684) +
$signed(interm_6_709) +
$signed(interm_6_710) +
$signed(interm_6_713) +
$signed(interm_6_714) +
$signed(interm_6_716) +
$signed(interm_6_717) +
$signed(interm_6_719) +

$signed(bias_6);



// ---Neuro 7 ---
localparam NEURON_WIDTH_7 = 22;
wire signed [NEURON_WIDTH_7-1:0] n7_out;

wire signed [2*WIDTH_IN-1:0] interm_7_159;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul7_159 (.w_in(w_in[159*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_159));
wire signed [2*WIDTH_IN-1:0] interm_7_177;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul7_177 (.w_in(w_in[177*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_177));
wire signed [2*WIDTH_IN-1:0] interm_7_232;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul7_232 (.w_in(w_in[232*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_232));
wire signed [2*WIDTH_IN-1:0] interm_7_233;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd118)) mul7_233 (.w_in(w_in[233*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_233));
wire signed [2*WIDTH_IN-1:0] interm_7_265;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul7_265 (.w_in(w_in[265*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_265));
wire signed [2*WIDTH_IN-1:0] interm_7_289;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul7_289 (.w_in(w_in[289*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_289));
wire signed [2*WIDTH_IN-1:0] interm_7_316;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul7_316 (.w_in(w_in[316*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_316));
wire signed [2*WIDTH_IN-1:0] interm_7_317;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd107)) mul7_317 (.w_in(w_in[317*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_317));
wire signed [2*WIDTH_IN-1:0] interm_7_344;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul7_344 (.w_in(w_in[344*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_344));
wire signed [2*WIDTH_IN-1:0] interm_7_348;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul7_348 (.w_in(w_in[348*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_348));
wire signed [2*WIDTH_IN-1:0] interm_7_361;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul7_361 (.w_in(w_in[361*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_361));
wire signed [2*WIDTH_IN-1:0] interm_7_374;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul7_374 (.w_in(w_in[374*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_374));
wire signed [2*WIDTH_IN-1:0] interm_7_386;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul7_386 (.w_in(w_in[386*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_386));
wire signed [2*WIDTH_IN-1:0] interm_7_389;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul7_389 (.w_in(w_in[389*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_389));
wire signed [2*WIDTH_IN-1:0] interm_7_397;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul7_397 (.w_in(w_in[397*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_397));
wire signed [2*WIDTH_IN-1:0] interm_7_399;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul7_399 (.w_in(w_in[399*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_399));
wire signed [2*WIDTH_IN-1:0] interm_7_405;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul7_405 (.w_in(w_in[405*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_405));
wire signed [2*WIDTH_IN-1:0] interm_7_427;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul7_427 (.w_in(w_in[427*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_427));
wire signed [2*WIDTH_IN-1:0] interm_7_429;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul7_429 (.w_in(w_in[429*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_429));
wire signed [2*WIDTH_IN-1:0] interm_7_430;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul7_430 (.w_in(w_in[430*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_430));
wire signed [2*WIDTH_IN-1:0] interm_7_431;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul7_431 (.w_in(w_in[431*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_431));
wire signed [2*WIDTH_IN-1:0] interm_7_437;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd120)) mul7_437 (.w_in(w_in[437*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_437));
wire signed [2*WIDTH_IN-1:0] interm_7_456;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul7_456 (.w_in(w_in[456*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_456));
wire signed [2*WIDTH_IN-1:0] interm_7_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul7_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_459));
wire signed [2*WIDTH_IN-1:0] interm_7_480;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul7_480 (.w_in(w_in[480*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_480));
wire signed [2*WIDTH_IN-1:0] interm_7_527;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul7_527 (.w_in(w_in[527*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_527));
wire signed [2*WIDTH_IN-1:0] interm_7_554;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul7_554 (.w_in(w_in[554*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_554));
wire signed [2*WIDTH_IN-1:0] interm_7_583;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul7_583 (.w_in(w_in[583*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_583));
wire signed [2*WIDTH_IN-1:0] interm_7_621;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul7_621 (.w_in(w_in[621*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_621));
wire signed [2*WIDTH_IN-1:0] interm_7_622;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul7_622 (.w_in(w_in[622*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_622));
wire signed [2*WIDTH_IN-1:0] interm_7_650;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd102)) mul7_650 (.w_in(w_in[650*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_650));
wire signed [2*WIDTH_IN-1:0] interm_7_676;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul7_676 (.w_in(w_in[676*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_676));
wire signed [2*WIDTH_IN-1:0] interm_7_677;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul7_677 (.w_in(w_in[677*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_677));
wire signed [2*WIDTH_IN-1:0] interm_7_707;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd121)) mul7_707 (.w_in(w_in[707*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_707));
wire signed [2*WIDTH_IN-1:0] interm_7_712;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul7_712 (.w_in(w_in[712*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_712));
wire signed [2*WIDTH_IN-1:0] interm_7_719;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul7_719 (.w_in(w_in[719*WIDTH_IN+:WIDTH_IN]), .w_out(interm_7_719));


wire signed [22-1:0] bias_7 = 22'd11441;

assign n7_out =
$signed(interm_7_159) +
$signed(interm_7_177) +
$signed(interm_7_232) +
$signed(interm_7_233) +
$signed(interm_7_265) +
$signed(interm_7_289) +
$signed(interm_7_316) +
$signed(interm_7_317) +
$signed(interm_7_344) +
$signed(interm_7_348) +
$signed(interm_7_361) +
$signed(interm_7_374) +
$signed(interm_7_386) +
$signed(interm_7_389) +
$signed(interm_7_397) +
$signed(interm_7_399) +
$signed(interm_7_405) +
$signed(interm_7_427) +
$signed(interm_7_429) +
$signed(interm_7_430) +
$signed(interm_7_431) +
$signed(interm_7_437) +
$signed(interm_7_456) +
$signed(interm_7_459) +
$signed(interm_7_480) +
$signed(interm_7_527) +
$signed(interm_7_554) +
$signed(interm_7_583) +
$signed(interm_7_621) +
$signed(interm_7_622) +
$signed(interm_7_650) +
$signed(interm_7_676) +
$signed(interm_7_677) +
$signed(interm_7_707) +
$signed(interm_7_712) +
$signed(interm_7_719) +

$signed(bias_7);



// ---Neuro 8 ---
localparam NEURON_WIDTH_8 = 21;
wire signed [NEURON_WIDTH_8-1:0] n8_out;

wire signed [2*WIDTH_IN-1:0] interm_8_192;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul8_192 (.w_in(w_in[192*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_192));
wire signed [2*WIDTH_IN-1:0] interm_8_234;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd102)) mul8_234 (.w_in(w_in[234*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_234));
wire signed [2*WIDTH_IN-1:0] interm_8_236;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul8_236 (.w_in(w_in[236*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_236));
wire signed [2*WIDTH_IN-1:0] interm_8_238;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul8_238 (.w_in(w_in[238*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_238));
wire signed [2*WIDTH_IN-1:0] interm_8_241;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul8_241 (.w_in(w_in[241*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_241));
wire signed [2*WIDTH_IN-1:0] interm_8_243;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul8_243 (.w_in(w_in[243*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_243));
wire signed [2*WIDTH_IN-1:0] interm_8_263;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd106)) mul8_263 (.w_in(w_in[263*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_263));
wire signed [2*WIDTH_IN-1:0] interm_8_266;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul8_266 (.w_in(w_in[266*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_266));
wire signed [2*WIDTH_IN-1:0] interm_8_267;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul8_267 (.w_in(w_in[267*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_267));
wire signed [2*WIDTH_IN-1:0] interm_8_268;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul8_268 (.w_in(w_in[268*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_268));
wire signed [2*WIDTH_IN-1:0] interm_8_269;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul8_269 (.w_in(w_in[269*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_269));
wire signed [2*WIDTH_IN-1:0] interm_8_274;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul8_274 (.w_in(w_in[274*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_274));
wire signed [2*WIDTH_IN-1:0] interm_8_321;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul8_321 (.w_in(w_in[321*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_321));
wire signed [2*WIDTH_IN-1:0] interm_8_322;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul8_322 (.w_in(w_in[322*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_322));
wire signed [2*WIDTH_IN-1:0] interm_8_324;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul8_324 (.w_in(w_in[324*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_324));
wire signed [2*WIDTH_IN-1:0] interm_8_325;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul8_325 (.w_in(w_in[325*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_325));
wire signed [2*WIDTH_IN-1:0] interm_8_332;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul8_332 (.w_in(w_in[332*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_332));
wire signed [2*WIDTH_IN-1:0] interm_8_346;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul8_346 (.w_in(w_in[346*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_346));
wire signed [2*WIDTH_IN-1:0] interm_8_347;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd102)) mul8_347 (.w_in(w_in[347*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_347));
wire signed [2*WIDTH_IN-1:0] interm_8_350;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul8_350 (.w_in(w_in[350*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_350));
wire signed [2*WIDTH_IN-1:0] interm_8_357;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul8_357 (.w_in(w_in[357*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_357));
wire signed [2*WIDTH_IN-1:0] interm_8_359;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd69)) mul8_359 (.w_in(w_in[359*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_359));
wire signed [2*WIDTH_IN-1:0] interm_8_368;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul8_368 (.w_in(w_in[368*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_368));
wire signed [2*WIDTH_IN-1:0] interm_8_372;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul8_372 (.w_in(w_in[372*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_372));
wire signed [2*WIDTH_IN-1:0] interm_8_384;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul8_384 (.w_in(w_in[384*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_384));
wire signed [2*WIDTH_IN-1:0] interm_8_386;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd68)) mul8_386 (.w_in(w_in[386*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_386));
wire signed [2*WIDTH_IN-1:0] interm_8_387;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul8_387 (.w_in(w_in[387*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_387));
wire signed [2*WIDTH_IN-1:0] interm_8_397;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul8_397 (.w_in(w_in[397*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_397));
wire signed [2*WIDTH_IN-1:0] interm_8_398;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul8_398 (.w_in(w_in[398*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_398));
wire signed [2*WIDTH_IN-1:0] interm_8_404;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul8_404 (.w_in(w_in[404*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_404));
wire signed [2*WIDTH_IN-1:0] interm_8_413;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul8_413 (.w_in(w_in[413*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_413));
wire signed [2*WIDTH_IN-1:0] interm_8_609;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd106)) mul8_609 (.w_in(w_in[609*WIDTH_IN+:WIDTH_IN]), .w_out(interm_8_609));


wire signed [21-1:0] bias_8 = 21'd8613;

assign n8_out =
$signed(interm_8_192) +
$signed(interm_8_234) +
$signed(interm_8_236) +
$signed(interm_8_238) +
$signed(interm_8_241) +
$signed(interm_8_243) +
$signed(interm_8_263) +
$signed(interm_8_266) +
$signed(interm_8_267) +
$signed(interm_8_268) +
$signed(interm_8_269) +
$signed(interm_8_274) +
$signed(interm_8_321) +
$signed(interm_8_322) +
$signed(interm_8_324) +
$signed(interm_8_325) +
$signed(interm_8_332) +
$signed(interm_8_346) +
$signed(interm_8_347) +
$signed(interm_8_350) +
$signed(interm_8_357) +
$signed(interm_8_359) +
$signed(interm_8_368) +
$signed(interm_8_372) +
$signed(interm_8_384) +
$signed(interm_8_386) +
$signed(interm_8_387) +
$signed(interm_8_397) +
$signed(interm_8_398) +
$signed(interm_8_404) +
$signed(interm_8_413) +
$signed(interm_8_609) +

$signed(bias_8);



// ---Neuro 9 ---
localparam NEURON_WIDTH_9 = 21;
wire signed [NEURON_WIDTH_9-1:0] n9_out;

wire signed [2*WIDTH_IN-1:0] interm_9_96;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul9_96 (.w_in(w_in[96*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_96));
wire signed [2*WIDTH_IN-1:0] interm_9_123;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul9_123 (.w_in(w_in[123*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_123));
wire signed [2*WIDTH_IN-1:0] interm_9_126;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul9_126 (.w_in(w_in[126*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_126));
wire signed [2*WIDTH_IN-1:0] interm_9_127;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd121)) mul9_127 (.w_in(w_in[127*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_127));
wire signed [2*WIDTH_IN-1:0] interm_9_156;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul9_156 (.w_in(w_in[156*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_156));
wire signed [2*WIDTH_IN-1:0] interm_9_184;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul9_184 (.w_in(w_in[184*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_184));
wire signed [2*WIDTH_IN-1:0] interm_9_209;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul9_209 (.w_in(w_in[209*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_209));
wire signed [2*WIDTH_IN-1:0] interm_9_213;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul9_213 (.w_in(w_in[213*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_213));
wire signed [2*WIDTH_IN-1:0] interm_9_214;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul9_214 (.w_in(w_in[214*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_214));
wire signed [2*WIDTH_IN-1:0] interm_9_235;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd125)) mul9_235 (.w_in(w_in[235*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_235));
wire signed [2*WIDTH_IN-1:0] interm_9_237;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul9_237 (.w_in(w_in[237*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_237));
wire signed [2*WIDTH_IN-1:0] interm_9_243;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul9_243 (.w_in(w_in[243*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_243));
wire signed [2*WIDTH_IN-1:0] interm_9_246;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul9_246 (.w_in(w_in[246*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_246));
wire signed [2*WIDTH_IN-1:0] interm_9_247;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul9_247 (.w_in(w_in[247*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_247));
wire signed [2*WIDTH_IN-1:0] interm_9_257;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul9_257 (.w_in(w_in[257*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_257));
wire signed [2*WIDTH_IN-1:0] interm_9_260;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul9_260 (.w_in(w_in[260*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_260));
wire signed [2*WIDTH_IN-1:0] interm_9_261;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul9_261 (.w_in(w_in[261*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_261));
wire signed [2*WIDTH_IN-1:0] interm_9_266;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul9_266 (.w_in(w_in[266*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_266));
wire signed [2*WIDTH_IN-1:0] interm_9_267;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul9_267 (.w_in(w_in[267*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_267));
wire signed [2*WIDTH_IN-1:0] interm_9_272;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul9_272 (.w_in(w_in[272*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_272));
wire signed [2*WIDTH_IN-1:0] interm_9_285;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd79)) mul9_285 (.w_in(w_in[285*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_285));
wire signed [2*WIDTH_IN-1:0] interm_9_286;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul9_286 (.w_in(w_in[286*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_286));
wire signed [2*WIDTH_IN-1:0] interm_9_305;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd102)) mul9_305 (.w_in(w_in[305*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_305));
wire signed [2*WIDTH_IN-1:0] interm_9_469;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul9_469 (.w_in(w_in[469*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_469));
wire signed [2*WIDTH_IN-1:0] interm_9_499;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul9_499 (.w_in(w_in[499*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_499));
wire signed [2*WIDTH_IN-1:0] interm_9_510;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul9_510 (.w_in(w_in[510*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_510));
wire signed [2*WIDTH_IN-1:0] interm_9_545;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul9_545 (.w_in(w_in[545*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_545));
wire signed [2*WIDTH_IN-1:0] interm_9_571;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul9_571 (.w_in(w_in[571*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_571));
wire signed [2*WIDTH_IN-1:0] interm_9_580;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd117)) mul9_580 (.w_in(w_in[580*WIDTH_IN+:WIDTH_IN]), .w_out(interm_9_580));


wire signed [21-1:0] bias_9 = -21'd11329;

assign n9_out =
$signed(interm_9_96) +
$signed(interm_9_123) +
$signed(interm_9_126) +
$signed(interm_9_127) +
$signed(interm_9_156) +
$signed(interm_9_184) +
$signed(interm_9_209) +
$signed(interm_9_213) +
$signed(interm_9_214) +
$signed(interm_9_235) +
$signed(interm_9_237) +
$signed(interm_9_243) +
$signed(interm_9_246) +
$signed(interm_9_247) +
$signed(interm_9_257) +
$signed(interm_9_260) +
$signed(interm_9_261) +
$signed(interm_9_266) +
$signed(interm_9_267) +
$signed(interm_9_272) +
$signed(interm_9_285) +
$signed(interm_9_286) +
$signed(interm_9_305) +
$signed(interm_9_469) +
$signed(interm_9_499) +
$signed(interm_9_510) +
$signed(interm_9_545) +
$signed(interm_9_571) +
$signed(interm_9_580) +

$signed(bias_9);



// ---Neuro 10 ---
localparam NEURON_WIDTH_10 = 22;
wire signed [NEURON_WIDTH_10-1:0] n10_out;

wire signed [2*WIDTH_IN-1:0] interm_10_149;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd112)) mul10_149 (.w_in(w_in[149*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_149));
wire signed [2*WIDTH_IN-1:0] interm_10_184;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul10_184 (.w_in(w_in[184*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_184));
wire signed [2*WIDTH_IN-1:0] interm_10_201;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd105)) mul10_201 (.w_in(w_in[201*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_201));
wire signed [2*WIDTH_IN-1:0] interm_10_209;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul10_209 (.w_in(w_in[209*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_209));
wire signed [2*WIDTH_IN-1:0] interm_10_213;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul10_213 (.w_in(w_in[213*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_213));
wire signed [2*WIDTH_IN-1:0] interm_10_216;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul10_216 (.w_in(w_in[216*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_216));
wire signed [2*WIDTH_IN-1:0] interm_10_217;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul10_217 (.w_in(w_in[217*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_217));
wire signed [2*WIDTH_IN-1:0] interm_10_239;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul10_239 (.w_in(w_in[239*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_239));
wire signed [2*WIDTH_IN-1:0] interm_10_256;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul10_256 (.w_in(w_in[256*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_256));
wire signed [2*WIDTH_IN-1:0] interm_10_291;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul10_291 (.w_in(w_in[291*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_291));
wire signed [2*WIDTH_IN-1:0] interm_10_292;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul10_292 (.w_in(w_in[292*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_292));
wire signed [2*WIDTH_IN-1:0] interm_10_294;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul10_294 (.w_in(w_in[294*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_294));
wire signed [2*WIDTH_IN-1:0] interm_10_295;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd86)) mul10_295 (.w_in(w_in[295*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_295));
wire signed [2*WIDTH_IN-1:0] interm_10_300;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul10_300 (.w_in(w_in[300*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_300));
wire signed [2*WIDTH_IN-1:0] interm_10_304;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd124)) mul10_304 (.w_in(w_in[304*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_304));
wire signed [2*WIDTH_IN-1:0] interm_10_319;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul10_319 (.w_in(w_in[319*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_319));
wire signed [2*WIDTH_IN-1:0] interm_10_324;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd125)) mul10_324 (.w_in(w_in[324*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_324));
wire signed [2*WIDTH_IN-1:0] interm_10_345;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul10_345 (.w_in(w_in[345*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_345));
wire signed [2*WIDTH_IN-1:0] interm_10_354;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd118)) mul10_354 (.w_in(w_in[354*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_354));
wire signed [2*WIDTH_IN-1:0] interm_10_358;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul10_358 (.w_in(w_in[358*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_358));
wire signed [2*WIDTH_IN-1:0] interm_10_413;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd118)) mul10_413 (.w_in(w_in[413*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_413));
wire signed [2*WIDTH_IN-1:0] interm_10_433;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd117)) mul10_433 (.w_in(w_in[433*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_433));
wire signed [2*WIDTH_IN-1:0] interm_10_442;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul10_442 (.w_in(w_in[442*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_442));
wire signed [2*WIDTH_IN-1:0] interm_10_443;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul10_443 (.w_in(w_in[443*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_443));
wire signed [2*WIDTH_IN-1:0] interm_10_446;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul10_446 (.w_in(w_in[446*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_446));
wire signed [2*WIDTH_IN-1:0] interm_10_464;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd118)) mul10_464 (.w_in(w_in[464*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_464));
wire signed [2*WIDTH_IN-1:0] interm_10_465;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul10_465 (.w_in(w_in[465*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_465));
wire signed [2*WIDTH_IN-1:0] interm_10_491;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul10_491 (.w_in(w_in[491*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_491));
wire signed [2*WIDTH_IN-1:0] interm_10_496;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul10_496 (.w_in(w_in[496*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_496));
wire signed [2*WIDTH_IN-1:0] interm_10_509;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul10_509 (.w_in(w_in[509*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_509));
wire signed [2*WIDTH_IN-1:0] interm_10_544;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul10_544 (.w_in(w_in[544*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_544));
wire signed [2*WIDTH_IN-1:0] interm_10_583;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul10_583 (.w_in(w_in[583*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_583));
wire signed [2*WIDTH_IN-1:0] interm_10_611;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd87)) mul10_611 (.w_in(w_in[611*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_611));
wire signed [2*WIDTH_IN-1:0] interm_10_639;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul10_639 (.w_in(w_in[639*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_639));
wire signed [2*WIDTH_IN-1:0] interm_10_652;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul10_652 (.w_in(w_in[652*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_652));
wire signed [2*WIDTH_IN-1:0] interm_10_664;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd124)) mul10_664 (.w_in(w_in[664*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_664));
wire signed [2*WIDTH_IN-1:0] interm_10_665;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd119)) mul10_665 (.w_in(w_in[665*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_665));
wire signed [2*WIDTH_IN-1:0] interm_10_681;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul10_681 (.w_in(w_in[681*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_681));
wire signed [2*WIDTH_IN-1:0] interm_10_733;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul10_733 (.w_in(w_in[733*WIDTH_IN+:WIDTH_IN]), .w_out(interm_10_733));


wire signed [22-1:0] bias_10 = -22'd3138;

assign n10_out =
$signed(interm_10_149) +
$signed(interm_10_184) +
$signed(interm_10_201) +
$signed(interm_10_209) +
$signed(interm_10_213) +
$signed(interm_10_216) +
$signed(interm_10_217) +
$signed(interm_10_239) +
$signed(interm_10_256) +
$signed(interm_10_291) +
$signed(interm_10_292) +
$signed(interm_10_294) +
$signed(interm_10_295) +
$signed(interm_10_300) +
$signed(interm_10_304) +
$signed(interm_10_319) +
$signed(interm_10_324) +
$signed(interm_10_345) +
$signed(interm_10_354) +
$signed(interm_10_358) +
$signed(interm_10_413) +
$signed(interm_10_433) +
$signed(interm_10_442) +
$signed(interm_10_443) +
$signed(interm_10_446) +
$signed(interm_10_464) +
$signed(interm_10_465) +
$signed(interm_10_491) +
$signed(interm_10_496) +
$signed(interm_10_509) +
$signed(interm_10_544) +
$signed(interm_10_583) +
$signed(interm_10_611) +
$signed(interm_10_639) +
$signed(interm_10_652) +
$signed(interm_10_664) +
$signed(interm_10_665) +
$signed(interm_10_681) +
$signed(interm_10_733) +

$signed(bias_10);



// ---Neuro 11 ---
localparam NEURON_WIDTH_11 = 21;
wire signed [NEURON_WIDTH_11-1:0] n11_out;

wire signed [2*WIDTH_IN-1:0] interm_11_124;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul11_124 (.w_in(w_in[124*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_124));
wire signed [2*WIDTH_IN-1:0] interm_11_126;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul11_126 (.w_in(w_in[126*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_126));
wire signed [2*WIDTH_IN-1:0] interm_11_156;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul11_156 (.w_in(w_in[156*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_156));
wire signed [2*WIDTH_IN-1:0] interm_11_159;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd66)) mul11_159 (.w_in(w_in[159*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_159));
wire signed [2*WIDTH_IN-1:0] interm_11_256;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul11_256 (.w_in(w_in[256*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_256));
wire signed [2*WIDTH_IN-1:0] interm_11_326;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd80)) mul11_326 (.w_in(w_in[326*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_326));
wire signed [2*WIDTH_IN-1:0] interm_11_350;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul11_350 (.w_in(w_in[350*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_350));
wire signed [2*WIDTH_IN-1:0] interm_11_374;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul11_374 (.w_in(w_in[374*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_374));
wire signed [2*WIDTH_IN-1:0] interm_11_376;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd102)) mul11_376 (.w_in(w_in[376*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_376));
wire signed [2*WIDTH_IN-1:0] interm_11_378;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul11_378 (.w_in(w_in[378*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_378));
wire signed [2*WIDTH_IN-1:0] interm_11_380;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul11_380 (.w_in(w_in[380*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_380));
wire signed [2*WIDTH_IN-1:0] interm_11_385;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul11_385 (.w_in(w_in[385*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_385));
wire signed [2*WIDTH_IN-1:0] interm_11_387;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul11_387 (.w_in(w_in[387*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_387));
wire signed [2*WIDTH_IN-1:0] interm_11_388;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul11_388 (.w_in(w_in[388*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_388));
wire signed [2*WIDTH_IN-1:0] interm_11_414;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul11_414 (.w_in(w_in[414*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_414));
wire signed [2*WIDTH_IN-1:0] interm_11_415;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul11_415 (.w_in(w_in[415*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_415));
wire signed [2*WIDTH_IN-1:0] interm_11_416;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul11_416 (.w_in(w_in[416*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_416));
wire signed [2*WIDTH_IN-1:0] interm_11_434;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul11_434 (.w_in(w_in[434*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_434));
wire signed [2*WIDTH_IN-1:0] interm_11_440;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul11_440 (.w_in(w_in[440*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_440));
wire signed [2*WIDTH_IN-1:0] interm_11_466;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul11_466 (.w_in(w_in[466*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_466));
wire signed [2*WIDTH_IN-1:0] interm_11_468;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd79)) mul11_468 (.w_in(w_in[468*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_468));
wire signed [2*WIDTH_IN-1:0] interm_11_510;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd124)) mul11_510 (.w_in(w_in[510*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_510));
wire signed [2*WIDTH_IN-1:0] interm_11_544;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul11_544 (.w_in(w_in[544*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_544));
wire signed [2*WIDTH_IN-1:0] interm_11_571;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul11_571 (.w_in(w_in[571*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_571));
wire signed [2*WIDTH_IN-1:0] interm_11_576;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul11_576 (.w_in(w_in[576*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_576));
wire signed [2*WIDTH_IN-1:0] interm_11_580;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul11_580 (.w_in(w_in[580*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_580));
wire signed [2*WIDTH_IN-1:0] interm_11_594;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul11_594 (.w_in(w_in[594*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_594));
wire signed [2*WIDTH_IN-1:0] interm_11_664;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd71)) mul11_664 (.w_in(w_in[664*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_664));
wire signed [2*WIDTH_IN-1:0] interm_11_705;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul11_705 (.w_in(w_in[705*WIDTH_IN+:WIDTH_IN]), .w_out(interm_11_705));


wire signed [21-1:0] bias_11 = 21'd699;

assign n11_out =
$signed(interm_11_124) +
$signed(interm_11_126) +
$signed(interm_11_156) +
$signed(interm_11_159) +
$signed(interm_11_256) +
$signed(interm_11_326) +
$signed(interm_11_350) +
$signed(interm_11_374) +
$signed(interm_11_376) +
$signed(interm_11_378) +
$signed(interm_11_380) +
$signed(interm_11_385) +
$signed(interm_11_387) +
$signed(interm_11_388) +
$signed(interm_11_414) +
$signed(interm_11_415) +
$signed(interm_11_416) +
$signed(interm_11_434) +
$signed(interm_11_440) +
$signed(interm_11_466) +
$signed(interm_11_468) +
$signed(interm_11_510) +
$signed(interm_11_544) +
$signed(interm_11_571) +
$signed(interm_11_576) +
$signed(interm_11_580) +
$signed(interm_11_594) +
$signed(interm_11_664) +
$signed(interm_11_705) +

$signed(bias_11);



// ---Neuro 12 ---
localparam NEURON_WIDTH_12 = 21;
wire signed [NEURON_WIDTH_12-1:0] n12_out;

wire signed [2*WIDTH_IN-1:0] interm_12_95;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul12_95 (.w_in(w_in[95*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_95));
wire signed [2*WIDTH_IN-1:0] interm_12_98;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul12_98 (.w_in(w_in[98*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_98));
wire signed [2*WIDTH_IN-1:0] interm_12_178;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul12_178 (.w_in(w_in[178*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_178));
wire signed [2*WIDTH_IN-1:0] interm_12_180;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd116)) mul12_180 (.w_in(w_in[180*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_180));
wire signed [2*WIDTH_IN-1:0] interm_12_203;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul12_203 (.w_in(w_in[203*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_203));
wire signed [2*WIDTH_IN-1:0] interm_12_205;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul12_205 (.w_in(w_in[205*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_205));
wire signed [2*WIDTH_IN-1:0] interm_12_231;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul12_231 (.w_in(w_in[231*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_231));
wire signed [2*WIDTH_IN-1:0] interm_12_259;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul12_259 (.w_in(w_in[259*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_259));
wire signed [2*WIDTH_IN-1:0] interm_12_263;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul12_263 (.w_in(w_in[263*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_263));
wire signed [2*WIDTH_IN-1:0] interm_12_265;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul12_265 (.w_in(w_in[265*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_265));
wire signed [2*WIDTH_IN-1:0] interm_12_272;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul12_272 (.w_in(w_in[272*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_272));
wire signed [2*WIDTH_IN-1:0] interm_12_296;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd115)) mul12_296 (.w_in(w_in[296*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_296));
wire signed [2*WIDTH_IN-1:0] interm_12_322;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul12_322 (.w_in(w_in[322*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_322));
wire signed [2*WIDTH_IN-1:0] interm_12_328;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul12_328 (.w_in(w_in[328*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_328));
wire signed [2*WIDTH_IN-1:0] interm_12_332;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul12_332 (.w_in(w_in[332*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_332));
wire signed [2*WIDTH_IN-1:0] interm_12_340;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul12_340 (.w_in(w_in[340*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_340));
wire signed [2*WIDTH_IN-1:0] interm_12_347;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul12_347 (.w_in(w_in[347*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_347));
wire signed [2*WIDTH_IN-1:0] interm_12_349;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd124)) mul12_349 (.w_in(w_in[349*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_349));
wire signed [2*WIDTH_IN-1:0] interm_12_354;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd125)) mul12_354 (.w_in(w_in[354*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_354));
wire signed [2*WIDTH_IN-1:0] interm_12_357;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul12_357 (.w_in(w_in[357*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_357));
wire signed [2*WIDTH_IN-1:0] interm_12_360;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul12_360 (.w_in(w_in[360*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_360));
wire signed [2*WIDTH_IN-1:0] interm_12_380;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul12_380 (.w_in(w_in[380*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_380));
wire signed [2*WIDTH_IN-1:0] interm_12_386;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul12_386 (.w_in(w_in[386*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_386));
wire signed [2*WIDTH_IN-1:0] interm_12_388;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul12_388 (.w_in(w_in[388*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_388));
wire signed [2*WIDTH_IN-1:0] interm_12_427;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd111)) mul12_427 (.w_in(w_in[427*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_427));
wire signed [2*WIDTH_IN-1:0] interm_12_434;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd117)) mul12_434 (.w_in(w_in[434*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_434));
wire signed [2*WIDTH_IN-1:0] interm_12_488;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul12_488 (.w_in(w_in[488*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_488));
wire signed [2*WIDTH_IN-1:0] interm_12_739;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd105)) mul12_739 (.w_in(w_in[739*WIDTH_IN+:WIDTH_IN]), .w_out(interm_12_739));


wire signed [21-1:0] bias_12 = -21'd4176;

assign n12_out =
$signed(interm_12_95) +
$signed(interm_12_98) +
$signed(interm_12_178) +
$signed(interm_12_180) +
$signed(interm_12_203) +
$signed(interm_12_205) +
$signed(interm_12_231) +
$signed(interm_12_259) +
$signed(interm_12_263) +
$signed(interm_12_265) +
$signed(interm_12_272) +
$signed(interm_12_296) +
$signed(interm_12_322) +
$signed(interm_12_328) +
$signed(interm_12_332) +
$signed(interm_12_340) +
$signed(interm_12_347) +
$signed(interm_12_349) +
$signed(interm_12_354) +
$signed(interm_12_357) +
$signed(interm_12_360) +
$signed(interm_12_380) +
$signed(interm_12_386) +
$signed(interm_12_388) +
$signed(interm_12_427) +
$signed(interm_12_434) +
$signed(interm_12_488) +
$signed(interm_12_739) +

$signed(bias_12);



// ---Neuro 13 ---
localparam NEURON_WIDTH_13 = 21;
wire signed [NEURON_WIDTH_13-1:0] n13_out;

wire signed [2*WIDTH_IN-1:0] interm_13_124;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd59)) mul13_124 (.w_in(w_in[124*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_124));
wire signed [2*WIDTH_IN-1:0] interm_13_312;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul13_312 (.w_in(w_in[312*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_312));
wire signed [2*WIDTH_IN-1:0] interm_13_349;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul13_349 (.w_in(w_in[349*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_349));
wire signed [2*WIDTH_IN-1:0] interm_13_376;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul13_376 (.w_in(w_in[376*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_376));
wire signed [2*WIDTH_IN-1:0] interm_13_403;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul13_403 (.w_in(w_in[403*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_403));
wire signed [2*WIDTH_IN-1:0] interm_13_404;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul13_404 (.w_in(w_in[404*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_404));
wire signed [2*WIDTH_IN-1:0] interm_13_430;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul13_430 (.w_in(w_in[430*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_430));
wire signed [2*WIDTH_IN-1:0] interm_13_433;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd59)) mul13_433 (.w_in(w_in[433*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_433));
wire signed [2*WIDTH_IN-1:0] interm_13_440;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd66)) mul13_440 (.w_in(w_in[440*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_440));
wire signed [2*WIDTH_IN-1:0] interm_13_457;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul13_457 (.w_in(w_in[457*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_457));
wire signed [2*WIDTH_IN-1:0] interm_13_458;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul13_458 (.w_in(w_in[458*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_458));
wire signed [2*WIDTH_IN-1:0] interm_13_483;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd69)) mul13_483 (.w_in(w_in[483*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_483));
wire signed [2*WIDTH_IN-1:0] interm_13_484;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul13_484 (.w_in(w_in[484*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_484));
wire signed [2*WIDTH_IN-1:0] interm_13_485;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul13_485 (.w_in(w_in[485*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_485));
wire signed [2*WIDTH_IN-1:0] interm_13_488;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul13_488 (.w_in(w_in[488*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_488));
wire signed [2*WIDTH_IN-1:0] interm_13_511;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul13_511 (.w_in(w_in[511*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_511));
wire signed [2*WIDTH_IN-1:0] interm_13_512;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul13_512 (.w_in(w_in[512*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_512));
wire signed [2*WIDTH_IN-1:0] interm_13_513;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd51)) mul13_513 (.w_in(w_in[513*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_513));
wire signed [2*WIDTH_IN-1:0] interm_13_516;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd61)) mul13_516 (.w_in(w_in[516*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_516));
wire signed [2*WIDTH_IN-1:0] interm_13_517;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul13_517 (.w_in(w_in[517*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_517));
wire signed [2*WIDTH_IN-1:0] interm_13_538;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul13_538 (.w_in(w_in[538*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_538));
wire signed [2*WIDTH_IN-1:0] interm_13_543;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd59)) mul13_543 (.w_in(w_in[543*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_543));
wire signed [2*WIDTH_IN-1:0] interm_13_567;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul13_567 (.w_in(w_in[567*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_567));
wire signed [2*WIDTH_IN-1:0] interm_13_571;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd56)) mul13_571 (.w_in(w_in[571*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_571));
wire signed [2*WIDTH_IN-1:0] interm_13_572;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul13_572 (.w_in(w_in[572*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_572));
wire signed [2*WIDTH_IN-1:0] interm_13_577;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul13_577 (.w_in(w_in[577*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_577));
wire signed [2*WIDTH_IN-1:0] interm_13_611;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd77)) mul13_611 (.w_in(w_in[611*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_611));
wire signed [2*WIDTH_IN-1:0] interm_13_631;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd68)) mul13_631 (.w_in(w_in[631*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_631));
wire signed [2*WIDTH_IN-1:0] interm_13_657;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul13_657 (.w_in(w_in[657*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_657));
wire signed [2*WIDTH_IN-1:0] interm_13_660;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd57)) mul13_660 (.w_in(w_in[660*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_660));
wire signed [2*WIDTH_IN-1:0] interm_13_679;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd66)) mul13_679 (.w_in(w_in[679*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_679));
wire signed [2*WIDTH_IN-1:0] interm_13_691;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd67)) mul13_691 (.w_in(w_in[691*WIDTH_IN+:WIDTH_IN]), .w_out(interm_13_691));


wire signed [21-1:0] bias_13 = 21'd14805;

assign n13_out =
$signed(interm_13_124) +
$signed(interm_13_312) +
$signed(interm_13_349) +
$signed(interm_13_376) +
$signed(interm_13_403) +
$signed(interm_13_404) +
$signed(interm_13_430) +
$signed(interm_13_433) +
$signed(interm_13_440) +
$signed(interm_13_457) +
$signed(interm_13_458) +
$signed(interm_13_483) +
$signed(interm_13_484) +
$signed(interm_13_485) +
$signed(interm_13_488) +
$signed(interm_13_511) +
$signed(interm_13_512) +
$signed(interm_13_513) +
$signed(interm_13_516) +
$signed(interm_13_517) +
$signed(interm_13_538) +
$signed(interm_13_543) +
$signed(interm_13_567) +
$signed(interm_13_571) +
$signed(interm_13_572) +
$signed(interm_13_577) +
$signed(interm_13_611) +
$signed(interm_13_631) +
$signed(interm_13_657) +
$signed(interm_13_660) +
$signed(interm_13_679) +
$signed(interm_13_691) +

$signed(bias_13);



// ---Neuro 14 ---
localparam NEURON_WIDTH_14 = 21;
wire signed [NEURON_WIDTH_14-1:0] n14_out;

wire signed [2*WIDTH_IN-1:0] interm_14_158;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul14_158 (.w_in(w_in[158*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_158));
wire signed [2*WIDTH_IN-1:0] interm_14_162;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul14_162 (.w_in(w_in[162*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_162));
wire signed [2*WIDTH_IN-1:0] interm_14_219;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul14_219 (.w_in(w_in[219*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_219));
wire signed [2*WIDTH_IN-1:0] interm_14_248;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul14_248 (.w_in(w_in[248*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_248));
wire signed [2*WIDTH_IN-1:0] interm_14_266;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd71)) mul14_266 (.w_in(w_in[266*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_266));
wire signed [2*WIDTH_IN-1:0] interm_14_279;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul14_279 (.w_in(w_in[279*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_279));
wire signed [2*WIDTH_IN-1:0] interm_14_305;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd115)) mul14_305 (.w_in(w_in[305*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_305));
wire signed [2*WIDTH_IN-1:0] interm_14_346;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul14_346 (.w_in(w_in[346*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_346));
wire signed [2*WIDTH_IN-1:0] interm_14_359;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd102)) mul14_359 (.w_in(w_in[359*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_359));
wire signed [2*WIDTH_IN-1:0] interm_14_377;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul14_377 (.w_in(w_in[377*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_377));
wire signed [2*WIDTH_IN-1:0] interm_14_383;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul14_383 (.w_in(w_in[383*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_383));
wire signed [2*WIDTH_IN-1:0] interm_14_405;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd87)) mul14_405 (.w_in(w_in[405*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_405));
wire signed [2*WIDTH_IN-1:0] interm_14_432;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul14_432 (.w_in(w_in[432*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_432));
wire signed [2*WIDTH_IN-1:0] interm_14_433;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd76)) mul14_433 (.w_in(w_in[433*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_433));
wire signed [2*WIDTH_IN-1:0] interm_14_436;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul14_436 (.w_in(w_in[436*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_436));
wire signed [2*WIDTH_IN-1:0] interm_14_439;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul14_439 (.w_in(w_in[439*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_439));
wire signed [2*WIDTH_IN-1:0] interm_14_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd124)) mul14_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_459));
wire signed [2*WIDTH_IN-1:0] interm_14_481;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul14_481 (.w_in(w_in[481*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_481));
wire signed [2*WIDTH_IN-1:0] interm_14_486;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul14_486 (.w_in(w_in[486*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_486));
wire signed [2*WIDTH_IN-1:0] interm_14_516;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul14_516 (.w_in(w_in[516*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_516));
wire signed [2*WIDTH_IN-1:0] interm_14_554;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul14_554 (.w_in(w_in[554*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_554));
wire signed [2*WIDTH_IN-1:0] interm_14_556;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul14_556 (.w_in(w_in[556*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_556));
wire signed [2*WIDTH_IN-1:0] interm_14_612;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul14_612 (.w_in(w_in[612*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_612));
wire signed [2*WIDTH_IN-1:0] interm_14_613;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul14_613 (.w_in(w_in[613*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_613));
wire signed [2*WIDTH_IN-1:0] interm_14_640;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul14_640 (.w_in(w_in[640*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_640));
wire signed [2*WIDTH_IN-1:0] interm_14_650;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul14_650 (.w_in(w_in[650*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_650));
wire signed [2*WIDTH_IN-1:0] interm_14_669;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul14_669 (.w_in(w_in[669*WIDTH_IN+:WIDTH_IN]), .w_out(interm_14_669));


wire signed [21-1:0] bias_14 = 21'd8706;

assign n14_out =
$signed(interm_14_158) +
$signed(interm_14_162) +
$signed(interm_14_219) +
$signed(interm_14_248) +
$signed(interm_14_266) +
$signed(interm_14_279) +
$signed(interm_14_305) +
$signed(interm_14_346) +
$signed(interm_14_359) +
$signed(interm_14_377) +
$signed(interm_14_383) +
$signed(interm_14_405) +
$signed(interm_14_432) +
$signed(interm_14_433) +
$signed(interm_14_436) +
$signed(interm_14_439) +
$signed(interm_14_459) +
$signed(interm_14_481) +
$signed(interm_14_486) +
$signed(interm_14_516) +
$signed(interm_14_554) +
$signed(interm_14_556) +
$signed(interm_14_612) +
$signed(interm_14_613) +
$signed(interm_14_640) +
$signed(interm_14_650) +
$signed(interm_14_669) +

$signed(bias_14);



// ---Neuro 15 ---
localparam NEURON_WIDTH_15 = 22;
wire signed [NEURON_WIDTH_15-1:0] n15_out;

wire signed [2*WIDTH_IN-1:0] interm_15_257;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd79)) mul15_257 (.w_in(w_in[257*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_257));
wire signed [2*WIDTH_IN-1:0] interm_15_270;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul15_270 (.w_in(w_in[270*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_270));
wire signed [2*WIDTH_IN-1:0] interm_15_295;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul15_295 (.w_in(w_in[295*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_295));
wire signed [2*WIDTH_IN-1:0] interm_15_313;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul15_313 (.w_in(w_in[313*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_313));
wire signed [2*WIDTH_IN-1:0] interm_15_314;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul15_314 (.w_in(w_in[314*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_314));
wire signed [2*WIDTH_IN-1:0] interm_15_323;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul15_323 (.w_in(w_in[323*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_323));
wire signed [2*WIDTH_IN-1:0] interm_15_325;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul15_325 (.w_in(w_in[325*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_325));
wire signed [2*WIDTH_IN-1:0] interm_15_351;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul15_351 (.w_in(w_in[351*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_351));
wire signed [2*WIDTH_IN-1:0] interm_15_360;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul15_360 (.w_in(w_in[360*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_360));
wire signed [2*WIDTH_IN-1:0] interm_15_368;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul15_368 (.w_in(w_in[368*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_368));
wire signed [2*WIDTH_IN-1:0] interm_15_385;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd106)) mul15_385 (.w_in(w_in[385*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_385));
wire signed [2*WIDTH_IN-1:0] interm_15_407;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd122)) mul15_407 (.w_in(w_in[407*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_407));
wire signed [2*WIDTH_IN-1:0] interm_15_440;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd70)) mul15_440 (.w_in(w_in[440*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_440));
wire signed [2*WIDTH_IN-1:0] interm_15_452;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul15_452 (.w_in(w_in[452*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_452));
wire signed [2*WIDTH_IN-1:0] interm_15_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul15_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_459));
wire signed [2*WIDTH_IN-1:0] interm_15_460;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul15_460 (.w_in(w_in[460*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_460));
wire signed [2*WIDTH_IN-1:0] interm_15_481;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd115)) mul15_481 (.w_in(w_in[481*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_481));
wire signed [2*WIDTH_IN-1:0] interm_15_498;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul15_498 (.w_in(w_in[498*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_498));
wire signed [2*WIDTH_IN-1:0] interm_15_510;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul15_510 (.w_in(w_in[510*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_510));
wire signed [2*WIDTH_IN-1:0] interm_15_511;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul15_511 (.w_in(w_in[511*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_511));
wire signed [2*WIDTH_IN-1:0] interm_15_513;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul15_513 (.w_in(w_in[513*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_513));
wire signed [2*WIDTH_IN-1:0] interm_15_523;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul15_523 (.w_in(w_in[523*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_523));
wire signed [2*WIDTH_IN-1:0] interm_15_525;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul15_525 (.w_in(w_in[525*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_525));
wire signed [2*WIDTH_IN-1:0] interm_15_542;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul15_542 (.w_in(w_in[542*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_542));
wire signed [2*WIDTH_IN-1:0] interm_15_546;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul15_546 (.w_in(w_in[546*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_546));
wire signed [2*WIDTH_IN-1:0] interm_15_570;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul15_570 (.w_in(w_in[570*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_570));
wire signed [2*WIDTH_IN-1:0] interm_15_571;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul15_571 (.w_in(w_in[571*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_571));
wire signed [2*WIDTH_IN-1:0] interm_15_578;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul15_578 (.w_in(w_in[578*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_578));
wire signed [2*WIDTH_IN-1:0] interm_15_579;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd122)) mul15_579 (.w_in(w_in[579*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_579));
wire signed [2*WIDTH_IN-1:0] interm_15_608;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul15_608 (.w_in(w_in[608*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_608));
wire signed [2*WIDTH_IN-1:0] interm_15_631;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul15_631 (.w_in(w_in[631*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_631));
wire signed [2*WIDTH_IN-1:0] interm_15_633;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul15_633 (.w_in(w_in[633*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_633));
wire signed [2*WIDTH_IN-1:0] interm_15_636;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd87)) mul15_636 (.w_in(w_in[636*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_636));
wire signed [2*WIDTH_IN-1:0] interm_15_652;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd77)) mul15_652 (.w_in(w_in[652*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_652));
wire signed [2*WIDTH_IN-1:0] interm_15_659;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul15_659 (.w_in(w_in[659*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_659));
wire signed [2*WIDTH_IN-1:0] interm_15_661;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd116)) mul15_661 (.w_in(w_in[661*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_661));
wire signed [2*WIDTH_IN-1:0] interm_15_680;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul15_680 (.w_in(w_in[680*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_680));
wire signed [2*WIDTH_IN-1:0] interm_15_682;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul15_682 (.w_in(w_in[682*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_682));
wire signed [2*WIDTH_IN-1:0] interm_15_685;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul15_685 (.w_in(w_in[685*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_685));
wire signed [2*WIDTH_IN-1:0] interm_15_689;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul15_689 (.w_in(w_in[689*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_689));
wire signed [2*WIDTH_IN-1:0] interm_15_713;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul15_713 (.w_in(w_in[713*WIDTH_IN+:WIDTH_IN]), .w_out(interm_15_713));


wire signed [22-1:0] bias_15 = 22'd4409;

assign n15_out =
$signed(interm_15_257) +
$signed(interm_15_270) +
$signed(interm_15_295) +
$signed(interm_15_313) +
$signed(interm_15_314) +
$signed(interm_15_323) +
$signed(interm_15_325) +
$signed(interm_15_351) +
$signed(interm_15_360) +
$signed(interm_15_368) +
$signed(interm_15_385) +
$signed(interm_15_407) +
$signed(interm_15_440) +
$signed(interm_15_452) +
$signed(interm_15_459) +
$signed(interm_15_460) +
$signed(interm_15_481) +
$signed(interm_15_498) +
$signed(interm_15_510) +
$signed(interm_15_511) +
$signed(interm_15_513) +
$signed(interm_15_523) +
$signed(interm_15_525) +
$signed(interm_15_542) +
$signed(interm_15_546) +
$signed(interm_15_570) +
$signed(interm_15_571) +
$signed(interm_15_578) +
$signed(interm_15_579) +
$signed(interm_15_608) +
$signed(interm_15_631) +
$signed(interm_15_633) +
$signed(interm_15_636) +
$signed(interm_15_652) +
$signed(interm_15_659) +
$signed(interm_15_661) +
$signed(interm_15_680) +
$signed(interm_15_682) +
$signed(interm_15_685) +
$signed(interm_15_689) +
$signed(interm_15_713) +

$signed(bias_15);



// ---Neuro 16 ---
localparam NEURON_WIDTH_16 = 22;
wire signed [NEURON_WIDTH_16-1:0] n16_out;

wire signed [2*WIDTH_IN-1:0] interm_16_122;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul16_122 (.w_in(w_in[122*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_122));
wire signed [2*WIDTH_IN-1:0] interm_16_123;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd106)) mul16_123 (.w_in(w_in[123*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_123));
wire signed [2*WIDTH_IN-1:0] interm_16_129;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul16_129 (.w_in(w_in[129*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_129));
wire signed [2*WIDTH_IN-1:0] interm_16_134;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul16_134 (.w_in(w_in[134*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_134));
wire signed [2*WIDTH_IN-1:0] interm_16_135;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul16_135 (.w_in(w_in[135*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_135));
wire signed [2*WIDTH_IN-1:0] interm_16_148;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul16_148 (.w_in(w_in[148*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_148));
wire signed [2*WIDTH_IN-1:0] interm_16_164;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd76)) mul16_164 (.w_in(w_in[164*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_164));
wire signed [2*WIDTH_IN-1:0] interm_16_175;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul16_175 (.w_in(w_in[175*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_175));
wire signed [2*WIDTH_IN-1:0] interm_16_177;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul16_177 (.w_in(w_in[177*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_177));
wire signed [2*WIDTH_IN-1:0] interm_16_192;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd77)) mul16_192 (.w_in(w_in[192*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_192));
wire signed [2*WIDTH_IN-1:0] interm_16_203;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul16_203 (.w_in(w_in[203*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_203));
wire signed [2*WIDTH_IN-1:0] interm_16_204;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul16_204 (.w_in(w_in[204*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_204));
wire signed [2*WIDTH_IN-1:0] interm_16_219;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd103)) mul16_219 (.w_in(w_in[219*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_219));
wire signed [2*WIDTH_IN-1:0] interm_16_232;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd121)) mul16_232 (.w_in(w_in[232*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_232));
wire signed [2*WIDTH_IN-1:0] interm_16_240;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul16_240 (.w_in(w_in[240*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_240));
wire signed [2*WIDTH_IN-1:0] interm_16_248;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd122)) mul16_248 (.w_in(w_in[248*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_248));
wire signed [2*WIDTH_IN-1:0] interm_16_249;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul16_249 (.w_in(w_in[249*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_249));
wire signed [2*WIDTH_IN-1:0] interm_16_259;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul16_259 (.w_in(w_in[259*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_259));
wire signed [2*WIDTH_IN-1:0] interm_16_260;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd125)) mul16_260 (.w_in(w_in[260*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_260));
wire signed [2*WIDTH_IN-1:0] interm_16_263;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul16_263 (.w_in(w_in[263*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_263));
wire signed [2*WIDTH_IN-1:0] interm_16_276;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd102)) mul16_276 (.w_in(w_in[276*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_276));
wire signed [2*WIDTH_IN-1:0] interm_16_287;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul16_287 (.w_in(w_in[287*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_287));
wire signed [2*WIDTH_IN-1:0] interm_16_288;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd119)) mul16_288 (.w_in(w_in[288*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_288));
wire signed [2*WIDTH_IN-1:0] interm_16_291;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul16_291 (.w_in(w_in[291*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_291));
wire signed [2*WIDTH_IN-1:0] interm_16_292;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul16_292 (.w_in(w_in[292*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_292));
wire signed [2*WIDTH_IN-1:0] interm_16_298;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul16_298 (.w_in(w_in[298*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_298));
wire signed [2*WIDTH_IN-1:0] interm_16_315;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul16_315 (.w_in(w_in[315*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_315));
wire signed [2*WIDTH_IN-1:0] interm_16_316;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd119)) mul16_316 (.w_in(w_in[316*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_316));
wire signed [2*WIDTH_IN-1:0] interm_16_344;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul16_344 (.w_in(w_in[344*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_344));
wire signed [2*WIDTH_IN-1:0] interm_16_370;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul16_370 (.w_in(w_in[370*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_370));
wire signed [2*WIDTH_IN-1:0] interm_16_376;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul16_376 (.w_in(w_in[376*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_376));
wire signed [2*WIDTH_IN-1:0] interm_16_379;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd103)) mul16_379 (.w_in(w_in[379*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_379));
wire signed [2*WIDTH_IN-1:0] interm_16_398;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul16_398 (.w_in(w_in[398*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_398));
wire signed [2*WIDTH_IN-1:0] interm_16_399;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul16_399 (.w_in(w_in[399*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_399));
wire signed [2*WIDTH_IN-1:0] interm_16_405;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd76)) mul16_405 (.w_in(w_in[405*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_405));
wire signed [2*WIDTH_IN-1:0] interm_16_434;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd122)) mul16_434 (.w_in(w_in[434*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_434));
wire signed [2*WIDTH_IN-1:0] interm_16_470;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd67)) mul16_470 (.w_in(w_in[470*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_470));
wire signed [2*WIDTH_IN-1:0] interm_16_491;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd72)) mul16_491 (.w_in(w_in[491*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_491));
wire signed [2*WIDTH_IN-1:0] interm_16_493;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul16_493 (.w_in(w_in[493*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_493));
wire signed [2*WIDTH_IN-1:0] interm_16_498;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd63)) mul16_498 (.w_in(w_in[498*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_498));
wire signed [2*WIDTH_IN-1:0] interm_16_581;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul16_581 (.w_in(w_in[581*WIDTH_IN+:WIDTH_IN]), .w_out(interm_16_581));


wire signed [22-1:0] bias_16 = 22'd29422;

assign n16_out =
$signed(interm_16_122) +
$signed(interm_16_123) +
$signed(interm_16_129) +
$signed(interm_16_134) +
$signed(interm_16_135) +
$signed(interm_16_148) +
$signed(interm_16_164) +
$signed(interm_16_175) +
$signed(interm_16_177) +
$signed(interm_16_192) +
$signed(interm_16_203) +
$signed(interm_16_204) +
$signed(interm_16_219) +
$signed(interm_16_232) +
$signed(interm_16_240) +
$signed(interm_16_248) +
$signed(interm_16_249) +
$signed(interm_16_259) +
$signed(interm_16_260) +
$signed(interm_16_263) +
$signed(interm_16_276) +
$signed(interm_16_287) +
$signed(interm_16_288) +
$signed(interm_16_291) +
$signed(interm_16_292) +
$signed(interm_16_298) +
$signed(interm_16_315) +
$signed(interm_16_316) +
$signed(interm_16_344) +
$signed(interm_16_370) +
$signed(interm_16_376) +
$signed(interm_16_379) +
$signed(interm_16_398) +
$signed(interm_16_399) +
$signed(interm_16_405) +
$signed(interm_16_434) +
$signed(interm_16_470) +
$signed(interm_16_491) +
$signed(interm_16_493) +
$signed(interm_16_498) +
$signed(interm_16_581) +

$signed(bias_16);



// ---Neuro 17 ---
localparam NEURON_WIDTH_17 = 21;
wire signed [NEURON_WIDTH_17-1:0] n17_out;

wire signed [2*WIDTH_IN-1:0] interm_17_97;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd102)) mul17_97 (.w_in(w_in[97*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_97));
wire signed [2*WIDTH_IN-1:0] interm_17_98;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul17_98 (.w_in(w_in[98*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_98));
wire signed [2*WIDTH_IN-1:0] interm_17_99;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul17_99 (.w_in(w_in[99*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_99));
wire signed [2*WIDTH_IN-1:0] interm_17_100;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul17_100 (.w_in(w_in[100*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_100));
wire signed [2*WIDTH_IN-1:0] interm_17_152;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul17_152 (.w_in(w_in[152*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_152));
wire signed [2*WIDTH_IN-1:0] interm_17_184;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul17_184 (.w_in(w_in[184*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_184));
wire signed [2*WIDTH_IN-1:0] interm_17_203;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd67)) mul17_203 (.w_in(w_in[203*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_203));
wire signed [2*WIDTH_IN-1:0] interm_17_212;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul17_212 (.w_in(w_in[212*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_212));
wire signed [2*WIDTH_IN-1:0] interm_17_240;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul17_240 (.w_in(w_in[240*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_240));
wire signed [2*WIDTH_IN-1:0] interm_17_247;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul17_247 (.w_in(w_in[247*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_247));
wire signed [2*WIDTH_IN-1:0] interm_17_291;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd105)) mul17_291 (.w_in(w_in[291*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_291));
wire signed [2*WIDTH_IN-1:0] interm_17_292;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul17_292 (.w_in(w_in[292*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_292));
wire signed [2*WIDTH_IN-1:0] interm_17_293;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul17_293 (.w_in(w_in[293*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_293));
wire signed [2*WIDTH_IN-1:0] interm_17_296;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul17_296 (.w_in(w_in[296*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_296));
wire signed [2*WIDTH_IN-1:0] interm_17_298;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul17_298 (.w_in(w_in[298*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_298));
wire signed [2*WIDTH_IN-1:0] interm_17_301;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd80)) mul17_301 (.w_in(w_in[301*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_301));
wire signed [2*WIDTH_IN-1:0] interm_17_321;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul17_321 (.w_in(w_in[321*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_321));
wire signed [2*WIDTH_IN-1:0] interm_17_347;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd71)) mul17_347 (.w_in(w_in[347*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_347));
wire signed [2*WIDTH_IN-1:0] interm_17_398;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul17_398 (.w_in(w_in[398*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_398));
wire signed [2*WIDTH_IN-1:0] interm_17_399;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul17_399 (.w_in(w_in[399*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_399));
wire signed [2*WIDTH_IN-1:0] interm_17_401;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul17_401 (.w_in(w_in[401*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_401));
wire signed [2*WIDTH_IN-1:0] interm_17_403;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd62)) mul17_403 (.w_in(w_in[403*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_403));
wire signed [2*WIDTH_IN-1:0] interm_17_425;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul17_425 (.w_in(w_in[425*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_425));
wire signed [2*WIDTH_IN-1:0] interm_17_427;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd116)) mul17_427 (.w_in(w_in[427*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_427));
wire signed [2*WIDTH_IN-1:0] interm_17_453;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul17_453 (.w_in(w_in[453*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_453));
wire signed [2*WIDTH_IN-1:0] interm_17_461;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul17_461 (.w_in(w_in[461*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_461));
wire signed [2*WIDTH_IN-1:0] interm_17_481;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd79)) mul17_481 (.w_in(w_in[481*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_481));
wire signed [2*WIDTH_IN-1:0] interm_17_568;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd117)) mul17_568 (.w_in(w_in[568*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_568));
wire signed [2*WIDTH_IN-1:0] interm_17_592;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd73)) mul17_592 (.w_in(w_in[592*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_592));
wire signed [2*WIDTH_IN-1:0] interm_17_620;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd72)) mul17_620 (.w_in(w_in[620*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_620));
wire signed [2*WIDTH_IN-1:0] interm_17_623;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul17_623 (.w_in(w_in[623*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_623));
wire signed [2*WIDTH_IN-1:0] interm_17_743;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul17_743 (.w_in(w_in[743*WIDTH_IN+:WIDTH_IN]), .w_out(interm_17_743));


wire signed [21-1:0] bias_17 = 21'd16547;

assign n17_out =
$signed(interm_17_97) +
$signed(interm_17_98) +
$signed(interm_17_99) +
$signed(interm_17_100) +
$signed(interm_17_152) +
$signed(interm_17_184) +
$signed(interm_17_203) +
$signed(interm_17_212) +
$signed(interm_17_240) +
$signed(interm_17_247) +
$signed(interm_17_291) +
$signed(interm_17_292) +
$signed(interm_17_293) +
$signed(interm_17_296) +
$signed(interm_17_298) +
$signed(interm_17_301) +
$signed(interm_17_321) +
$signed(interm_17_347) +
$signed(interm_17_398) +
$signed(interm_17_399) +
$signed(interm_17_401) +
$signed(interm_17_403) +
$signed(interm_17_425) +
$signed(interm_17_427) +
$signed(interm_17_453) +
$signed(interm_17_461) +
$signed(interm_17_481) +
$signed(interm_17_568) +
$signed(interm_17_592) +
$signed(interm_17_620) +
$signed(interm_17_623) +
$signed(interm_17_743) +

$signed(bias_17);



// ---Neuro 18 ---
localparam NEURON_WIDTH_18 = 22;
wire signed [NEURON_WIDTH_18-1:0] n18_out;

wire signed [2*WIDTH_IN-1:0] interm_18_99;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul18_99 (.w_in(w_in[99*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_99));
wire signed [2*WIDTH_IN-1:0] interm_18_120;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul18_120 (.w_in(w_in[120*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_120));
wire signed [2*WIDTH_IN-1:0] interm_18_131;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul18_131 (.w_in(w_in[131*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_131));
wire signed [2*WIDTH_IN-1:0] interm_18_148;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd76)) mul18_148 (.w_in(w_in[148*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_148));
wire signed [2*WIDTH_IN-1:0] interm_18_151;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul18_151 (.w_in(w_in[151*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_151));
wire signed [2*WIDTH_IN-1:0] interm_18_178;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul18_178 (.w_in(w_in[178*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_178));
wire signed [2*WIDTH_IN-1:0] interm_18_180;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul18_180 (.w_in(w_in[180*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_180));
wire signed [2*WIDTH_IN-1:0] interm_18_181;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul18_181 (.w_in(w_in[181*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_181));
wire signed [2*WIDTH_IN-1:0] interm_18_183;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul18_183 (.w_in(w_in[183*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_183));
wire signed [2*WIDTH_IN-1:0] interm_18_185;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul18_185 (.w_in(w_in[185*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_185));
wire signed [2*WIDTH_IN-1:0] interm_18_209;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd119)) mul18_209 (.w_in(w_in[209*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_209));
wire signed [2*WIDTH_IN-1:0] interm_18_210;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd124)) mul18_210 (.w_in(w_in[210*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_210));
wire signed [2*WIDTH_IN-1:0] interm_18_211;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul18_211 (.w_in(w_in[211*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_211));
wire signed [2*WIDTH_IN-1:0] interm_18_215;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul18_215 (.w_in(w_in[215*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_215));
wire signed [2*WIDTH_IN-1:0] interm_18_233;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul18_233 (.w_in(w_in[233*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_233));
wire signed [2*WIDTH_IN-1:0] interm_18_247;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul18_247 (.w_in(w_in[247*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_247));
wire signed [2*WIDTH_IN-1:0] interm_18_265;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul18_265 (.w_in(w_in[265*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_265));
wire signed [2*WIDTH_IN-1:0] interm_18_270;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd86)) mul18_270 (.w_in(w_in[270*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_270));
wire signed [2*WIDTH_IN-1:0] interm_18_292;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul18_292 (.w_in(w_in[292*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_292));
wire signed [2*WIDTH_IN-1:0] interm_18_293;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd70)) mul18_293 (.w_in(w_in[293*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_293));
wire signed [2*WIDTH_IN-1:0] interm_18_295;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul18_295 (.w_in(w_in[295*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_295));
wire signed [2*WIDTH_IN-1:0] interm_18_298;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd105)) mul18_298 (.w_in(w_in[298*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_298));
wire signed [2*WIDTH_IN-1:0] interm_18_345;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul18_345 (.w_in(w_in[345*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_345));
wire signed [2*WIDTH_IN-1:0] interm_18_347;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul18_347 (.w_in(w_in[347*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_347));
wire signed [2*WIDTH_IN-1:0] interm_18_370;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul18_370 (.w_in(w_in[370*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_370));
wire signed [2*WIDTH_IN-1:0] interm_18_415;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul18_415 (.w_in(w_in[415*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_415));
wire signed [2*WIDTH_IN-1:0] interm_18_456;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul18_456 (.w_in(w_in[456*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_456));
wire signed [2*WIDTH_IN-1:0] interm_18_497;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd75)) mul18_497 (.w_in(w_in[497*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_497));
wire signed [2*WIDTH_IN-1:0] interm_18_518;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul18_518 (.w_in(w_in[518*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_518));
wire signed [2*WIDTH_IN-1:0] interm_18_582;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd112)) mul18_582 (.w_in(w_in[582*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_582));
wire signed [2*WIDTH_IN-1:0] interm_18_655;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul18_655 (.w_in(w_in[655*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_655));
wire signed [2*WIDTH_IN-1:0] interm_18_740;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul18_740 (.w_in(w_in[740*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_740));
wire signed [2*WIDTH_IN-1:0] interm_18_742;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd80)) mul18_742 (.w_in(w_in[742*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_742));
wire signed [2*WIDTH_IN-1:0] interm_18_744;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul18_744 (.w_in(w_in[744*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_744));
wire signed [2*WIDTH_IN-1:0] interm_18_746;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul18_746 (.w_in(w_in[746*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_746));
wire signed [2*WIDTH_IN-1:0] interm_18_747;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd77)) mul18_747 (.w_in(w_in[747*WIDTH_IN+:WIDTH_IN]), .w_out(interm_18_747));


wire signed [22-1:0] bias_18 = -22'd14166;

assign n18_out =
$signed(interm_18_99) +
$signed(interm_18_120) +
$signed(interm_18_131) +
$signed(interm_18_148) +
$signed(interm_18_151) +
$signed(interm_18_178) +
$signed(interm_18_180) +
$signed(interm_18_181) +
$signed(interm_18_183) +
$signed(interm_18_185) +
$signed(interm_18_209) +
$signed(interm_18_210) +
$signed(interm_18_211) +
$signed(interm_18_215) +
$signed(interm_18_233) +
$signed(interm_18_247) +
$signed(interm_18_265) +
$signed(interm_18_270) +
$signed(interm_18_292) +
$signed(interm_18_293) +
$signed(interm_18_295) +
$signed(interm_18_298) +
$signed(interm_18_345) +
$signed(interm_18_347) +
$signed(interm_18_370) +
$signed(interm_18_415) +
$signed(interm_18_456) +
$signed(interm_18_497) +
$signed(interm_18_518) +
$signed(interm_18_582) +
$signed(interm_18_655) +
$signed(interm_18_740) +
$signed(interm_18_742) +
$signed(interm_18_744) +
$signed(interm_18_746) +
$signed(interm_18_747) +

$signed(bias_18);



// ---Neuro 19 ---
localparam NEURON_WIDTH_19 = 21;
wire signed [NEURON_WIDTH_19-1:0] n19_out;

wire signed [2*WIDTH_IN-1:0] interm_19_75;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul19_75 (.w_in(w_in[75*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_75));
wire signed [2*WIDTH_IN-1:0] interm_19_104;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul19_104 (.w_in(w_in[104*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_104));
wire signed [2*WIDTH_IN-1:0] interm_19_128;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul19_128 (.w_in(w_in[128*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_128));
wire signed [2*WIDTH_IN-1:0] interm_19_133;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd124)) mul19_133 (.w_in(w_in[133*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_133));
wire signed [2*WIDTH_IN-1:0] interm_19_145;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd116)) mul19_145 (.w_in(w_in[145*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_145));
wire signed [2*WIDTH_IN-1:0] interm_19_146;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul19_146 (.w_in(w_in[146*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_146));
wire signed [2*WIDTH_IN-1:0] interm_19_150;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul19_150 (.w_in(w_in[150*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_150));
wire signed [2*WIDTH_IN-1:0] interm_19_154;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd120)) mul19_154 (.w_in(w_in[154*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_154));
wire signed [2*WIDTH_IN-1:0] interm_19_156;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul19_156 (.w_in(w_in[156*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_156));
wire signed [2*WIDTH_IN-1:0] interm_19_173;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul19_173 (.w_in(w_in[173*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_173));
wire signed [2*WIDTH_IN-1:0] interm_19_183;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul19_183 (.w_in(w_in[183*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_183));
wire signed [2*WIDTH_IN-1:0] interm_19_210;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd115)) mul19_210 (.w_in(w_in[210*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_210));
wire signed [2*WIDTH_IN-1:0] interm_19_262;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul19_262 (.w_in(w_in[262*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_262));
wire signed [2*WIDTH_IN-1:0] interm_19_269;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd102)) mul19_269 (.w_in(w_in[269*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_269));
wire signed [2*WIDTH_IN-1:0] interm_19_293;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd76)) mul19_293 (.w_in(w_in[293*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_293));
wire signed [2*WIDTH_IN-1:0] interm_19_294;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd115)) mul19_294 (.w_in(w_in[294*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_294));
wire signed [2*WIDTH_IN-1:0] interm_19_302;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul19_302 (.w_in(w_in[302*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_302));
wire signed [2*WIDTH_IN-1:0] interm_19_321;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul19_321 (.w_in(w_in[321*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_321));
wire signed [2*WIDTH_IN-1:0] interm_19_327;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul19_327 (.w_in(w_in[327*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_327));
wire signed [2*WIDTH_IN-1:0] interm_19_328;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul19_328 (.w_in(w_in[328*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_328));
wire signed [2*WIDTH_IN-1:0] interm_19_329;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul19_329 (.w_in(w_in[329*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_329));
wire signed [2*WIDTH_IN-1:0] interm_19_330;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul19_330 (.w_in(w_in[330*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_330));
wire signed [2*WIDTH_IN-1:0] interm_19_350;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul19_350 (.w_in(w_in[350*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_350));
wire signed [2*WIDTH_IN-1:0] interm_19_429;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul19_429 (.w_in(w_in[429*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_429));
wire signed [2*WIDTH_IN-1:0] interm_19_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul19_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_459));
wire signed [2*WIDTH_IN-1:0] interm_19_469;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd107)) mul19_469 (.w_in(w_in[469*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_469));
wire signed [2*WIDTH_IN-1:0] interm_19_495;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul19_495 (.w_in(w_in[495*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_495));
wire signed [2*WIDTH_IN-1:0] interm_19_624;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd112)) mul19_624 (.w_in(w_in[624*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_624));
wire signed [2*WIDTH_IN-1:0] interm_19_663;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul19_663 (.w_in(w_in[663*WIDTH_IN+:WIDTH_IN]), .w_out(interm_19_663));


wire signed [21-1:0] bias_19 = -21'd30189;

assign n19_out =
$signed(interm_19_75) +
$signed(interm_19_104) +
$signed(interm_19_128) +
$signed(interm_19_133) +
$signed(interm_19_145) +
$signed(interm_19_146) +
$signed(interm_19_150) +
$signed(interm_19_154) +
$signed(interm_19_156) +
$signed(interm_19_173) +
$signed(interm_19_183) +
$signed(interm_19_210) +
$signed(interm_19_262) +
$signed(interm_19_269) +
$signed(interm_19_293) +
$signed(interm_19_294) +
$signed(interm_19_302) +
$signed(interm_19_321) +
$signed(interm_19_327) +
$signed(interm_19_328) +
$signed(interm_19_329) +
$signed(interm_19_330) +
$signed(interm_19_350) +
$signed(interm_19_429) +
$signed(interm_19_459) +
$signed(interm_19_469) +
$signed(interm_19_495) +
$signed(interm_19_624) +
$signed(interm_19_663) +

$signed(bias_19);



// ---Neuro 20 ---
localparam NEURON_WIDTH_20 = 22;
wire signed [NEURON_WIDTH_20-1:0] n20_out;

wire signed [2*WIDTH_IN-1:0] interm_20_127;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd107)) mul20_127 (.w_in(w_in[127*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_127));
wire signed [2*WIDTH_IN-1:0] interm_20_156;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul20_156 (.w_in(w_in[156*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_156));
wire signed [2*WIDTH_IN-1:0] interm_20_157;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd116)) mul20_157 (.w_in(w_in[157*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_157));
wire signed [2*WIDTH_IN-1:0] interm_20_185;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul20_185 (.w_in(w_in[185*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_185));
wire signed [2*WIDTH_IN-1:0] interm_20_187;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul20_187 (.w_in(w_in[187*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_187));
wire signed [2*WIDTH_IN-1:0] interm_20_204;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul20_204 (.w_in(w_in[204*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_204));
wire signed [2*WIDTH_IN-1:0] interm_20_215;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul20_215 (.w_in(w_in[215*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_215));
wire signed [2*WIDTH_IN-1:0] interm_20_243;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd106)) mul20_243 (.w_in(w_in[243*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_243));
wire signed [2*WIDTH_IN-1:0] interm_20_247;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul20_247 (.w_in(w_in[247*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_247));
wire signed [2*WIDTH_IN-1:0] interm_20_270;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul20_270 (.w_in(w_in[270*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_270));
wire signed [2*WIDTH_IN-1:0] interm_20_271;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd109)) mul20_271 (.w_in(w_in[271*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_271));
wire signed [2*WIDTH_IN-1:0] interm_20_272;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd93)) mul20_272 (.w_in(w_in[272*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_272));
wire signed [2*WIDTH_IN-1:0] interm_20_296;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul20_296 (.w_in(w_in[296*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_296));
wire signed [2*WIDTH_IN-1:0] interm_20_301;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd112)) mul20_301 (.w_in(w_in[301*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_301));
wire signed [2*WIDTH_IN-1:0] interm_20_302;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul20_302 (.w_in(w_in[302*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_302));
wire signed [2*WIDTH_IN-1:0] interm_20_303;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul20_303 (.w_in(w_in[303*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_303));
wire signed [2*WIDTH_IN-1:0] interm_20_305;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul20_305 (.w_in(w_in[305*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_305));
wire signed [2*WIDTH_IN-1:0] interm_20_313;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul20_313 (.w_in(w_in[313*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_313));
wire signed [2*WIDTH_IN-1:0] interm_20_325;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd106)) mul20_325 (.w_in(w_in[325*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_325));
wire signed [2*WIDTH_IN-1:0] interm_20_330;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd109)) mul20_330 (.w_in(w_in[330*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_330));
wire signed [2*WIDTH_IN-1:0] interm_20_359;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul20_359 (.w_in(w_in[359*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_359));
wire signed [2*WIDTH_IN-1:0] interm_20_360;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul20_360 (.w_in(w_in[360*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_360));
wire signed [2*WIDTH_IN-1:0] interm_20_386;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul20_386 (.w_in(w_in[386*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_386));
wire signed [2*WIDTH_IN-1:0] interm_20_431;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul20_431 (.w_in(w_in[431*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_431));
wire signed [2*WIDTH_IN-1:0] interm_20_455;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd114)) mul20_455 (.w_in(w_in[455*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_455));
wire signed [2*WIDTH_IN-1:0] interm_20_456;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul20_456 (.w_in(w_in[456*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_456));
wire signed [2*WIDTH_IN-1:0] interm_20_457;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul20_457 (.w_in(w_in[457*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_457));
wire signed [2*WIDTH_IN-1:0] interm_20_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul20_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_459));
wire signed [2*WIDTH_IN-1:0] interm_20_491;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul20_491 (.w_in(w_in[491*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_491));
wire signed [2*WIDTH_IN-1:0] interm_20_494;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul20_494 (.w_in(w_in[494*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_494));
wire signed [2*WIDTH_IN-1:0] interm_20_515;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul20_515 (.w_in(w_in[515*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_515));
wire signed [2*WIDTH_IN-1:0] interm_20_541;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul20_541 (.w_in(w_in[541*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_541));
wire signed [2*WIDTH_IN-1:0] interm_20_543;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul20_543 (.w_in(w_in[543*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_543));
wire signed [2*WIDTH_IN-1:0] interm_20_552;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul20_552 (.w_in(w_in[552*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_552));
wire signed [2*WIDTH_IN-1:0] interm_20_624;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd110)) mul20_624 (.w_in(w_in[624*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_624));
wire signed [2*WIDTH_IN-1:0] interm_20_626;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul20_626 (.w_in(w_in[626*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_626));
wire signed [2*WIDTH_IN-1:0] interm_20_630;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd102)) mul20_630 (.w_in(w_in[630*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_630));
wire signed [2*WIDTH_IN-1:0] interm_20_710;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd91)) mul20_710 (.w_in(w_in[710*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_710));
wire signed [2*WIDTH_IN-1:0] interm_20_717;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul20_717 (.w_in(w_in[717*WIDTH_IN+:WIDTH_IN]), .w_out(interm_20_717));


wire signed [22-1:0] bias_20 = -22'd28890;

assign n20_out =
$signed(interm_20_127) +
$signed(interm_20_156) +
$signed(interm_20_157) +
$signed(interm_20_185) +
$signed(interm_20_187) +
$signed(interm_20_204) +
$signed(interm_20_215) +
$signed(interm_20_243) +
$signed(interm_20_247) +
$signed(interm_20_270) +
$signed(interm_20_271) +
$signed(interm_20_272) +
$signed(interm_20_296) +
$signed(interm_20_301) +
$signed(interm_20_302) +
$signed(interm_20_303) +
$signed(interm_20_305) +
$signed(interm_20_313) +
$signed(interm_20_325) +
$signed(interm_20_330) +
$signed(interm_20_359) +
$signed(interm_20_360) +
$signed(interm_20_386) +
$signed(interm_20_431) +
$signed(interm_20_455) +
$signed(interm_20_456) +
$signed(interm_20_457) +
$signed(interm_20_459) +
$signed(interm_20_491) +
$signed(interm_20_494) +
$signed(interm_20_515) +
$signed(interm_20_541) +
$signed(interm_20_543) +
$signed(interm_20_552) +
$signed(interm_20_624) +
$signed(interm_20_626) +
$signed(interm_20_630) +
$signed(interm_20_710) +
$signed(interm_20_717) +

$signed(bias_20);



// ---Neuro 21 ---
localparam NEURON_WIDTH_21 = 21;
wire signed [NEURON_WIDTH_21-1:0] n21_out;

wire signed [2*WIDTH_IN-1:0] interm_21_157;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd64)) mul21_157 (.w_in(w_in[157*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_157));
wire signed [2*WIDTH_IN-1:0] interm_21_182;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd77)) mul21_182 (.w_in(w_in[182*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_182));
wire signed [2*WIDTH_IN-1:0] interm_21_186;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul21_186 (.w_in(w_in[186*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_186));
wire signed [2*WIDTH_IN-1:0] interm_21_204;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd80)) mul21_204 (.w_in(w_in[204*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_204));
wire signed [2*WIDTH_IN-1:0] interm_21_206;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd64)) mul21_206 (.w_in(w_in[206*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_206));
wire signed [2*WIDTH_IN-1:0] interm_21_212;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul21_212 (.w_in(w_in[212*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_212));
wire signed [2*WIDTH_IN-1:0] interm_21_233;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul21_233 (.w_in(w_in[233*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_233));
wire signed [2*WIDTH_IN-1:0] interm_21_248;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul21_248 (.w_in(w_in[248*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_248));
wire signed [2*WIDTH_IN-1:0] interm_21_267;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul21_267 (.w_in(w_in[267*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_267));
wire signed [2*WIDTH_IN-1:0] interm_21_268;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul21_268 (.w_in(w_in[268*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_268));
wire signed [2*WIDTH_IN-1:0] interm_21_269;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul21_269 (.w_in(w_in[269*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_269));
wire signed [2*WIDTH_IN-1:0] interm_21_270;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul21_270 (.w_in(w_in[270*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_270));
wire signed [2*WIDTH_IN-1:0] interm_21_271;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul21_271 (.w_in(w_in[271*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_271));
wire signed [2*WIDTH_IN-1:0] interm_21_273;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd61)) mul21_273 (.w_in(w_in[273*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_273));
wire signed [2*WIDTH_IN-1:0] interm_21_274;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd64)) mul21_274 (.w_in(w_in[274*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_274));
wire signed [2*WIDTH_IN-1:0] interm_21_275;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd64)) mul21_275 (.w_in(w_in[275*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_275));
wire signed [2*WIDTH_IN-1:0] interm_21_299;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul21_299 (.w_in(w_in[299*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_299));
wire signed [2*WIDTH_IN-1:0] interm_21_300;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd68)) mul21_300 (.w_in(w_in[300*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_300));
wire signed [2*WIDTH_IN-1:0] interm_21_302;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd63)) mul21_302 (.w_in(w_in[302*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_302));
wire signed [2*WIDTH_IN-1:0] interm_21_303;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd63)) mul21_303 (.w_in(w_in[303*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_303));
wire signed [2*WIDTH_IN-1:0] interm_21_340;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd73)) mul21_340 (.w_in(w_in[340*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_340));
wire signed [2*WIDTH_IN-1:0] interm_21_353;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul21_353 (.w_in(w_in[353*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_353));
wire signed [2*WIDTH_IN-1:0] interm_21_410;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd48)) mul21_410 (.w_in(w_in[410*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_410));
wire signed [2*WIDTH_IN-1:0] interm_21_598;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd68)) mul21_598 (.w_in(w_in[598*WIDTH_IN+:WIDTH_IN]), .w_out(interm_21_598));


wire signed [21-1:0] bias_21 = 21'd12279;

assign n21_out =
$signed(interm_21_157) +
$signed(interm_21_182) +
$signed(interm_21_186) +
$signed(interm_21_204) +
$signed(interm_21_206) +
$signed(interm_21_212) +
$signed(interm_21_233) +
$signed(interm_21_248) +
$signed(interm_21_267) +
$signed(interm_21_268) +
$signed(interm_21_269) +
$signed(interm_21_270) +
$signed(interm_21_271) +
$signed(interm_21_273) +
$signed(interm_21_274) +
$signed(interm_21_275) +
$signed(interm_21_299) +
$signed(interm_21_300) +
$signed(interm_21_302) +
$signed(interm_21_303) +
$signed(interm_21_340) +
$signed(interm_21_353) +
$signed(interm_21_410) +
$signed(interm_21_598) +

$signed(bias_21);



// ---Neuro 22 ---
localparam NEURON_WIDTH_22 = 22;
wire signed [NEURON_WIDTH_22-1:0] n22_out;

wire signed [2*WIDTH_IN-1:0] interm_22_157;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd86)) mul22_157 (.w_in(w_in[157*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_157));
wire signed [2*WIDTH_IN-1:0] interm_22_203;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul22_203 (.w_in(w_in[203*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_203));
wire signed [2*WIDTH_IN-1:0] interm_22_232;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul22_232 (.w_in(w_in[232*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_232));
wire signed [2*WIDTH_IN-1:0] interm_22_238;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul22_238 (.w_in(w_in[238*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_238));
wire signed [2*WIDTH_IN-1:0] interm_22_247;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd117)) mul22_247 (.w_in(w_in[247*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_247));
wire signed [2*WIDTH_IN-1:0] interm_22_257;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul22_257 (.w_in(w_in[257*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_257));
wire signed [2*WIDTH_IN-1:0] interm_22_265;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul22_265 (.w_in(w_in[265*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_265));
wire signed [2*WIDTH_IN-1:0] interm_22_312;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul22_312 (.w_in(w_in[312*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_312));
wire signed [2*WIDTH_IN-1:0] interm_22_318;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd66)) mul22_318 (.w_in(w_in[318*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_318));
wire signed [2*WIDTH_IN-1:0] interm_22_324;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd75)) mul22_324 (.w_in(w_in[324*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_324));
wire signed [2*WIDTH_IN-1:0] interm_22_325;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul22_325 (.w_in(w_in[325*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_325));
wire signed [2*WIDTH_IN-1:0] interm_22_340;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul22_340 (.w_in(w_in[340*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_340));
wire signed [2*WIDTH_IN-1:0] interm_22_341;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul22_341 (.w_in(w_in[341*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_341));
wire signed [2*WIDTH_IN-1:0] interm_22_368;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul22_368 (.w_in(w_in[368*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_368));
wire signed [2*WIDTH_IN-1:0] interm_22_376;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd109)) mul22_376 (.w_in(w_in[376*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_376));
wire signed [2*WIDTH_IN-1:0] interm_22_408;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul22_408 (.w_in(w_in[408*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_408));
wire signed [2*WIDTH_IN-1:0] interm_22_411;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul22_411 (.w_in(w_in[411*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_411));
wire signed [2*WIDTH_IN-1:0] interm_22_458;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul22_458 (.w_in(w_in[458*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_458));
wire signed [2*WIDTH_IN-1:0] interm_22_485;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul22_485 (.w_in(w_in[485*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_485));
wire signed [2*WIDTH_IN-1:0] interm_22_486;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd114)) mul22_486 (.w_in(w_in[486*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_486));
wire signed [2*WIDTH_IN-1:0] interm_22_487;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul22_487 (.w_in(w_in[487*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_487));
wire signed [2*WIDTH_IN-1:0] interm_22_513;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul22_513 (.w_in(w_in[513*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_513));
wire signed [2*WIDTH_IN-1:0] interm_22_517;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul22_517 (.w_in(w_in[517*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_517));
wire signed [2*WIDTH_IN-1:0] interm_22_518;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul22_518 (.w_in(w_in[518*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_518));
wire signed [2*WIDTH_IN-1:0] interm_22_540;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul22_540 (.w_in(w_in[540*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_540));
wire signed [2*WIDTH_IN-1:0] interm_22_547;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul22_547 (.w_in(w_in[547*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_547));
wire signed [2*WIDTH_IN-1:0] interm_22_570;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul22_570 (.w_in(w_in[570*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_570));
wire signed [2*WIDTH_IN-1:0] interm_22_574;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul22_574 (.w_in(w_in[574*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_574));
wire signed [2*WIDTH_IN-1:0] interm_22_584;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul22_584 (.w_in(w_in[584*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_584));
wire signed [2*WIDTH_IN-1:0] interm_22_595;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul22_595 (.w_in(w_in[595*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_595));
wire signed [2*WIDTH_IN-1:0] interm_22_606;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd114)) mul22_606 (.w_in(w_in[606*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_606));
wire signed [2*WIDTH_IN-1:0] interm_22_627;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd107)) mul22_627 (.w_in(w_in[627*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_627));
wire signed [2*WIDTH_IN-1:0] interm_22_628;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul22_628 (.w_in(w_in[628*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_628));
wire signed [2*WIDTH_IN-1:0] interm_22_639;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul22_639 (.w_in(w_in[639*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_639));
wire signed [2*WIDTH_IN-1:0] interm_22_641;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd80)) mul22_641 (.w_in(w_in[641*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_641));
wire signed [2*WIDTH_IN-1:0] interm_22_657;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul22_657 (.w_in(w_in[657*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_657));
wire signed [2*WIDTH_IN-1:0] interm_22_660;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd87)) mul22_660 (.w_in(w_in[660*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_660));
wire signed [2*WIDTH_IN-1:0] interm_22_677;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul22_677 (.w_in(w_in[677*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_677));
wire signed [2*WIDTH_IN-1:0] interm_22_689;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul22_689 (.w_in(w_in[689*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_689));
wire signed [2*WIDTH_IN-1:0] interm_22_705;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul22_705 (.w_in(w_in[705*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_705));
wire signed [2*WIDTH_IN-1:0] interm_22_720;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul22_720 (.w_in(w_in[720*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_720));
wire signed [2*WIDTH_IN-1:0] interm_22_721;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul22_721 (.w_in(w_in[721*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_721));
wire signed [2*WIDTH_IN-1:0] interm_22_734;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul22_734 (.w_in(w_in[734*WIDTH_IN+:WIDTH_IN]), .w_out(interm_22_734));


wire signed [22-1:0] bias_22 = 22'd36748;

assign n22_out =
$signed(interm_22_157) +
$signed(interm_22_203) +
$signed(interm_22_232) +
$signed(interm_22_238) +
$signed(interm_22_247) +
$signed(interm_22_257) +
$signed(interm_22_265) +
$signed(interm_22_312) +
$signed(interm_22_318) +
$signed(interm_22_324) +
$signed(interm_22_325) +
$signed(interm_22_340) +
$signed(interm_22_341) +
$signed(interm_22_368) +
$signed(interm_22_376) +
$signed(interm_22_408) +
$signed(interm_22_411) +
$signed(interm_22_458) +
$signed(interm_22_485) +
$signed(interm_22_486) +
$signed(interm_22_487) +
$signed(interm_22_513) +
$signed(interm_22_517) +
$signed(interm_22_518) +
$signed(interm_22_540) +
$signed(interm_22_547) +
$signed(interm_22_570) +
$signed(interm_22_574) +
$signed(interm_22_584) +
$signed(interm_22_595) +
$signed(interm_22_606) +
$signed(interm_22_627) +
$signed(interm_22_628) +
$signed(interm_22_639) +
$signed(interm_22_641) +
$signed(interm_22_657) +
$signed(interm_22_660) +
$signed(interm_22_677) +
$signed(interm_22_689) +
$signed(interm_22_705) +
$signed(interm_22_720) +
$signed(interm_22_721) +
$signed(interm_22_734) +

$signed(bias_22);



// ---Neuro 23 ---
localparam NEURON_WIDTH_23 = 22;
wire signed [NEURON_WIDTH_23-1:0] n23_out;

wire signed [2*WIDTH_IN-1:0] interm_23_102;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul23_102 (.w_in(w_in[102*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_102));
wire signed [2*WIDTH_IN-1:0] interm_23_127;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul23_127 (.w_in(w_in[127*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_127));
wire signed [2*WIDTH_IN-1:0] interm_23_157;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul23_157 (.w_in(w_in[157*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_157));
wire signed [2*WIDTH_IN-1:0] interm_23_182;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul23_182 (.w_in(w_in[182*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_182));
wire signed [2*WIDTH_IN-1:0] interm_23_238;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul23_238 (.w_in(w_in[238*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_238));
wire signed [2*WIDTH_IN-1:0] interm_23_267;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul23_267 (.w_in(w_in[267*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_267));
wire signed [2*WIDTH_IN-1:0] interm_23_295;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul23_295 (.w_in(w_in[295*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_295));
wire signed [2*WIDTH_IN-1:0] interm_23_297;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul23_297 (.w_in(w_in[297*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_297));
wire signed [2*WIDTH_IN-1:0] interm_23_327;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd111)) mul23_327 (.w_in(w_in[327*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_327));
wire signed [2*WIDTH_IN-1:0] interm_23_332;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd112)) mul23_332 (.w_in(w_in[332*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_332));
wire signed [2*WIDTH_IN-1:0] interm_23_351;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul23_351 (.w_in(w_in[351*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_351));
wire signed [2*WIDTH_IN-1:0] interm_23_354;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd108)) mul23_354 (.w_in(w_in[354*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_354));
wire signed [2*WIDTH_IN-1:0] interm_23_377;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul23_377 (.w_in(w_in[377*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_377));
wire signed [2*WIDTH_IN-1:0] interm_23_385;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul23_385 (.w_in(w_in[385*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_385));
wire signed [2*WIDTH_IN-1:0] interm_23_397;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul23_397 (.w_in(w_in[397*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_397));
wire signed [2*WIDTH_IN-1:0] interm_23_411;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd72)) mul23_411 (.w_in(w_in[411*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_411));
wire signed [2*WIDTH_IN-1:0] interm_23_430;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul23_430 (.w_in(w_in[430*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_430));
wire signed [2*WIDTH_IN-1:0] interm_23_432;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul23_432 (.w_in(w_in[432*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_432));
wire signed [2*WIDTH_IN-1:0] interm_23_439;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul23_439 (.w_in(w_in[439*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_439));
wire signed [2*WIDTH_IN-1:0] interm_23_441;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul23_441 (.w_in(w_in[441*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_441));
wire signed [2*WIDTH_IN-1:0] interm_23_460;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul23_460 (.w_in(w_in[460*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_460));
wire signed [2*WIDTH_IN-1:0] interm_23_465;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd123)) mul23_465 (.w_in(w_in[465*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_465));
wire signed [2*WIDTH_IN-1:0] interm_23_467;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul23_467 (.w_in(w_in[467*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_467));
wire signed [2*WIDTH_IN-1:0] interm_23_488;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul23_488 (.w_in(w_in[488*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_488));
wire signed [2*WIDTH_IN-1:0] interm_23_491;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul23_491 (.w_in(w_in[491*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_491));
wire signed [2*WIDTH_IN-1:0] interm_23_494;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd103)) mul23_494 (.w_in(w_in[494*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_494));
wire signed [2*WIDTH_IN-1:0] interm_23_515;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul23_515 (.w_in(w_in[515*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_515));
wire signed [2*WIDTH_IN-1:0] interm_23_516;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul23_516 (.w_in(w_in[516*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_516));
wire signed [2*WIDTH_IN-1:0] interm_23_519;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul23_519 (.w_in(w_in[519*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_519));
wire signed [2*WIDTH_IN-1:0] interm_23_564;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul23_564 (.w_in(w_in[564*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_564));
wire signed [2*WIDTH_IN-1:0] interm_23_569;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd100)) mul23_569 (.w_in(w_in[569*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_569));
wire signed [2*WIDTH_IN-1:0] interm_23_571;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul23_571 (.w_in(w_in[571*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_571));
wire signed [2*WIDTH_IN-1:0] interm_23_595;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul23_595 (.w_in(w_in[595*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_595));
wire signed [2*WIDTH_IN-1:0] interm_23_608;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul23_608 (.w_in(w_in[608*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_608));
wire signed [2*WIDTH_IN-1:0] interm_23_638;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul23_638 (.w_in(w_in[638*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_638));
wire signed [2*WIDTH_IN-1:0] interm_23_639;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul23_639 (.w_in(w_in[639*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_639));
wire signed [2*WIDTH_IN-1:0] interm_23_649;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd118)) mul23_649 (.w_in(w_in[649*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_649));
wire signed [2*WIDTH_IN-1:0] interm_23_667;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul23_667 (.w_in(w_in[667*WIDTH_IN+:WIDTH_IN]), .w_out(interm_23_667));


wire signed [22-1:0] bias_23 = 22'd33803;

assign n23_out =
$signed(interm_23_102) +
$signed(interm_23_127) +
$signed(interm_23_157) +
$signed(interm_23_182) +
$signed(interm_23_238) +
$signed(interm_23_267) +
$signed(interm_23_295) +
$signed(interm_23_297) +
$signed(interm_23_327) +
$signed(interm_23_332) +
$signed(interm_23_351) +
$signed(interm_23_354) +
$signed(interm_23_377) +
$signed(interm_23_385) +
$signed(interm_23_397) +
$signed(interm_23_411) +
$signed(interm_23_430) +
$signed(interm_23_432) +
$signed(interm_23_439) +
$signed(interm_23_441) +
$signed(interm_23_460) +
$signed(interm_23_465) +
$signed(interm_23_467) +
$signed(interm_23_488) +
$signed(interm_23_491) +
$signed(interm_23_494) +
$signed(interm_23_515) +
$signed(interm_23_516) +
$signed(interm_23_519) +
$signed(interm_23_564) +
$signed(interm_23_569) +
$signed(interm_23_571) +
$signed(interm_23_595) +
$signed(interm_23_608) +
$signed(interm_23_638) +
$signed(interm_23_639) +
$signed(interm_23_649) +
$signed(interm_23_667) +

$signed(bias_23);



// ---Neuro 24 ---
localparam NEURON_WIDTH_24 = 22;
wire signed [NEURON_WIDTH_24-1:0] n24_out;

wire signed [2*WIDTH_IN-1:0] interm_24_146;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd60)) mul24_146 (.w_in(w_in[146*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_146));
wire signed [2*WIDTH_IN-1:0] interm_24_187;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd67)) mul24_187 (.w_in(w_in[187*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_187));
wire signed [2*WIDTH_IN-1:0] interm_24_206;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd60)) mul24_206 (.w_in(w_in[206*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_206));
wire signed [2*WIDTH_IN-1:0] interm_24_213;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd65)) mul24_213 (.w_in(w_in[213*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_213));
wire signed [2*WIDTH_IN-1:0] interm_24_234;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd54)) mul24_234 (.w_in(w_in[234*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_234));
wire signed [2*WIDTH_IN-1:0] interm_24_292;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd52)) mul24_292 (.w_in(w_in[292*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_292));
wire signed [2*WIDTH_IN-1:0] interm_24_293;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd112)) mul24_293 (.w_in(w_in[293*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_293));
wire signed [2*WIDTH_IN-1:0] interm_24_294;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd68)) mul24_294 (.w_in(w_in[294*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_294));
wire signed [2*WIDTH_IN-1:0] interm_24_313;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd61)) mul24_313 (.w_in(w_in[313*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_313));
wire signed [2*WIDTH_IN-1:0] interm_24_315;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd53)) mul24_315 (.w_in(w_in[315*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_315));
wire signed [2*WIDTH_IN-1:0] interm_24_316;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd60)) mul24_316 (.w_in(w_in[316*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_316));
wire signed [2*WIDTH_IN-1:0] interm_24_317;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd69)) mul24_317 (.w_in(w_in[317*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_317));
wire signed [2*WIDTH_IN-1:0] interm_24_318;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul24_318 (.w_in(w_in[318*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_318));
wire signed [2*WIDTH_IN-1:0] interm_24_319;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul24_319 (.w_in(w_in[319*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_319));
wire signed [2*WIDTH_IN-1:0] interm_24_320;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul24_320 (.w_in(w_in[320*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_320));
wire signed [2*WIDTH_IN-1:0] interm_24_322;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd57)) mul24_322 (.w_in(w_in[322*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_322));
wire signed [2*WIDTH_IN-1:0] interm_24_323;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd67)) mul24_323 (.w_in(w_in[323*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_323));
wire signed [2*WIDTH_IN-1:0] interm_24_340;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd67)) mul24_340 (.w_in(w_in[340*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_340));
wire signed [2*WIDTH_IN-1:0] interm_24_341;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd70)) mul24_341 (.w_in(w_in[341*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_341));
wire signed [2*WIDTH_IN-1:0] interm_24_342;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul24_342 (.w_in(w_in[342*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_342));
wire signed [2*WIDTH_IN-1:0] interm_24_343;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd111)) mul24_343 (.w_in(w_in[343*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_343));
wire signed [2*WIDTH_IN-1:0] interm_24_344;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul24_344 (.w_in(w_in[344*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_344));
wire signed [2*WIDTH_IN-1:0] interm_24_345;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul24_345 (.w_in(w_in[345*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_345));
wire signed [2*WIDTH_IN-1:0] interm_24_346;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul24_346 (.w_in(w_in[346*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_346));
wire signed [2*WIDTH_IN-1:0] interm_24_368;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd68)) mul24_368 (.w_in(w_in[368*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_368));
wire signed [2*WIDTH_IN-1:0] interm_24_369;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul24_369 (.w_in(w_in[369*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_369));
wire signed [2*WIDTH_IN-1:0] interm_24_370;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd111)) mul24_370 (.w_in(w_in[370*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_370));
wire signed [2*WIDTH_IN-1:0] interm_24_371;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul24_371 (.w_in(w_in[371*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_371));
wire signed [2*WIDTH_IN-1:0] interm_24_397;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd56)) mul24_397 (.w_in(w_in[397*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_397));
wire signed [2*WIDTH_IN-1:0] interm_24_404;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd87)) mul24_404 (.w_in(w_in[404*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_404));
wire signed [2*WIDTH_IN-1:0] interm_24_413;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd71)) mul24_413 (.w_in(w_in[413*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_413));
wire signed [2*WIDTH_IN-1:0] interm_24_415;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd67)) mul24_415 (.w_in(w_in[415*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_415));
wire signed [2*WIDTH_IN-1:0] interm_24_431;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd65)) mul24_431 (.w_in(w_in[431*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_431));
wire signed [2*WIDTH_IN-1:0] interm_24_433;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd66)) mul24_433 (.w_in(w_in[433*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_433));
wire signed [2*WIDTH_IN-1:0] interm_24_435;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd61)) mul24_435 (.w_in(w_in[435*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_435));
wire signed [2*WIDTH_IN-1:0] interm_24_455;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd72)) mul24_455 (.w_in(w_in[455*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_455));
wire signed [2*WIDTH_IN-1:0] interm_24_459;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul24_459 (.w_in(w_in[459*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_459));
wire signed [2*WIDTH_IN-1:0] interm_24_482;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd65)) mul24_482 (.w_in(w_in[482*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_482));
wire signed [2*WIDTH_IN-1:0] interm_24_486;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul24_486 (.w_in(w_in[486*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_486));
wire signed [2*WIDTH_IN-1:0] interm_24_487;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd53)) mul24_487 (.w_in(w_in[487*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_487));
wire signed [2*WIDTH_IN-1:0] interm_24_500;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul24_500 (.w_in(w_in[500*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_500));
wire signed [2*WIDTH_IN-1:0] interm_24_508;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd60)) mul24_508 (.w_in(w_in[508*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_508));
wire signed [2*WIDTH_IN-1:0] interm_24_513;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd70)) mul24_513 (.w_in(w_in[513*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_513));
wire signed [2*WIDTH_IN-1:0] interm_24_536;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd66)) mul24_536 (.w_in(w_in[536*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_536));
wire signed [2*WIDTH_IN-1:0] interm_24_541;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd56)) mul24_541 (.w_in(w_in[541*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_541));
wire signed [2*WIDTH_IN-1:0] interm_24_567;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul24_567 (.w_in(w_in[567*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_567));
wire signed [2*WIDTH_IN-1:0] interm_24_691;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd72)) mul24_691 (.w_in(w_in[691*WIDTH_IN+:WIDTH_IN]), .w_out(interm_24_691));


wire signed [22-1:0] bias_24 = 22'd7998;

assign n24_out =
$signed(interm_24_146) +
$signed(interm_24_187) +
$signed(interm_24_206) +
$signed(interm_24_213) +
$signed(interm_24_234) +
$signed(interm_24_292) +
$signed(interm_24_293) +
$signed(interm_24_294) +
$signed(interm_24_313) +
$signed(interm_24_315) +
$signed(interm_24_316) +
$signed(interm_24_317) +
$signed(interm_24_318) +
$signed(interm_24_319) +
$signed(interm_24_320) +
$signed(interm_24_322) +
$signed(interm_24_323) +
$signed(interm_24_340) +
$signed(interm_24_341) +
$signed(interm_24_342) +
$signed(interm_24_343) +
$signed(interm_24_344) +
$signed(interm_24_345) +
$signed(interm_24_346) +
$signed(interm_24_368) +
$signed(interm_24_369) +
$signed(interm_24_370) +
$signed(interm_24_371) +
$signed(interm_24_397) +
$signed(interm_24_404) +
$signed(interm_24_413) +
$signed(interm_24_415) +
$signed(interm_24_431) +
$signed(interm_24_433) +
$signed(interm_24_435) +
$signed(interm_24_455) +
$signed(interm_24_459) +
$signed(interm_24_482) +
$signed(interm_24_486) +
$signed(interm_24_487) +
$signed(interm_24_500) +
$signed(interm_24_508) +
$signed(interm_24_513) +
$signed(interm_24_536) +
$signed(interm_24_541) +
$signed(interm_24_567) +
$signed(interm_24_691) +

$signed(bias_24);



// ---Neuro 25 ---
localparam NEURON_WIDTH_25 = 22;
wire signed [NEURON_WIDTH_25-1:0] n25_out;

wire signed [2*WIDTH_IN-1:0] interm_25_95;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul25_95 (.w_in(w_in[95*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_95));
wire signed [2*WIDTH_IN-1:0] interm_25_323;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul25_323 (.w_in(w_in[323*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_323));
wire signed [2*WIDTH_IN-1:0] interm_25_324;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul25_324 (.w_in(w_in[324*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_324));
wire signed [2*WIDTH_IN-1:0] interm_25_349;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul25_349 (.w_in(w_in[349*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_349));
wire signed [2*WIDTH_IN-1:0] interm_25_353;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul25_353 (.w_in(w_in[353*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_353));
wire signed [2*WIDTH_IN-1:0] interm_25_399;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd94)) mul25_399 (.w_in(w_in[399*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_399));
wire signed [2*WIDTH_IN-1:0] interm_25_409;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd114)) mul25_409 (.w_in(w_in[409*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_409));
wire signed [2*WIDTH_IN-1:0] interm_25_454;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul25_454 (.w_in(w_in[454*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_454));
wire signed [2*WIDTH_IN-1:0] interm_25_455;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul25_455 (.w_in(w_in[455*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_455));
wire signed [2*WIDTH_IN-1:0] interm_25_465;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul25_465 (.w_in(w_in[465*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_465));
wire signed [2*WIDTH_IN-1:0] interm_25_484;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul25_484 (.w_in(w_in[484*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_484));
wire signed [2*WIDTH_IN-1:0] interm_25_485;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul25_485 (.w_in(w_in[485*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_485));
wire signed [2*WIDTH_IN-1:0] interm_25_486;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul25_486 (.w_in(w_in[486*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_486));
wire signed [2*WIDTH_IN-1:0] interm_25_487;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul25_487 (.w_in(w_in[487*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_487));
wire signed [2*WIDTH_IN-1:0] interm_25_491;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd84)) mul25_491 (.w_in(w_in[491*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_491));
wire signed [2*WIDTH_IN-1:0] interm_25_492;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul25_492 (.w_in(w_in[492*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_492));
wire signed [2*WIDTH_IN-1:0] interm_25_515;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd81)) mul25_515 (.w_in(w_in[515*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_515));
wire signed [2*WIDTH_IN-1:0] interm_25_516;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul25_516 (.w_in(w_in[516*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_516));
wire signed [2*WIDTH_IN-1:0] interm_25_517;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul25_517 (.w_in(w_in[517*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_517));
wire signed [2*WIDTH_IN-1:0] interm_25_518;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul25_518 (.w_in(w_in[518*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_518));
wire signed [2*WIDTH_IN-1:0] interm_25_599;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul25_599 (.w_in(w_in[599*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_599));
wire signed [2*WIDTH_IN-1:0] interm_25_600;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd104)) mul25_600 (.w_in(w_in[600*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_600));
wire signed [2*WIDTH_IN-1:0] interm_25_603;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd120)) mul25_603 (.w_in(w_in[603*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_603));
wire signed [2*WIDTH_IN-1:0] interm_25_611;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul25_611 (.w_in(w_in[611*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_611));
wire signed [2*WIDTH_IN-1:0] interm_25_624;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul25_624 (.w_in(w_in[624*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_624));
wire signed [2*WIDTH_IN-1:0] interm_25_625;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul25_625 (.w_in(w_in[625*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_625));
wire signed [2*WIDTH_IN-1:0] interm_25_627;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd86)) mul25_627 (.w_in(w_in[627*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_627));
wire signed [2*WIDTH_IN-1:0] interm_25_629;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul25_629 (.w_in(w_in[629*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_629));
wire signed [2*WIDTH_IN-1:0] interm_25_632;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul25_632 (.w_in(w_in[632*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_632));
wire signed [2*WIDTH_IN-1:0] interm_25_654;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul25_654 (.w_in(w_in[654*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_654));
wire signed [2*WIDTH_IN-1:0] interm_25_658;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd97)) mul25_658 (.w_in(w_in[658*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_658));
wire signed [2*WIDTH_IN-1:0] interm_25_661;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd127)) mul25_661 (.w_in(w_in[661*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_661));
wire signed [2*WIDTH_IN-1:0] interm_25_680;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd99)) mul25_680 (.w_in(w_in[680*WIDTH_IN+:WIDTH_IN]), .w_out(interm_25_680));


wire signed [22-1:0] bias_25 = 22'd18205;

assign n25_out =
$signed(interm_25_95) +
$signed(interm_25_323) +
$signed(interm_25_324) +
$signed(interm_25_349) +
$signed(interm_25_353) +
$signed(interm_25_399) +
$signed(interm_25_409) +
$signed(interm_25_454) +
$signed(interm_25_455) +
$signed(interm_25_465) +
$signed(interm_25_484) +
$signed(interm_25_485) +
$signed(interm_25_486) +
$signed(interm_25_487) +
$signed(interm_25_491) +
$signed(interm_25_492) +
$signed(interm_25_515) +
$signed(interm_25_516) +
$signed(interm_25_517) +
$signed(interm_25_518) +
$signed(interm_25_599) +
$signed(interm_25_600) +
$signed(interm_25_603) +
$signed(interm_25_611) +
$signed(interm_25_624) +
$signed(interm_25_625) +
$signed(interm_25_627) +
$signed(interm_25_629) +
$signed(interm_25_632) +
$signed(interm_25_654) +
$signed(interm_25_658) +
$signed(interm_25_661) +
$signed(interm_25_680) +

$signed(bias_25);



// ---Neuro 26 ---
localparam NEURON_WIDTH_26 = 22;
wire signed [NEURON_WIDTH_26-1:0] n26_out;

wire signed [2*WIDTH_IN-1:0] interm_26_97;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul26_97 (.w_in(w_in[97*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_97));
wire signed [2*WIDTH_IN-1:0] interm_26_98;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul26_98 (.w_in(w_in[98*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_98));
wire signed [2*WIDTH_IN-1:0] interm_26_121;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul26_121 (.w_in(w_in[121*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_121));
wire signed [2*WIDTH_IN-1:0] interm_26_125;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd70)) mul26_125 (.w_in(w_in[125*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_125));
wire signed [2*WIDTH_IN-1:0] interm_26_126;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul26_126 (.w_in(w_in[126*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_126));
wire signed [2*WIDTH_IN-1:0] interm_26_129;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul26_129 (.w_in(w_in[129*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_129));
wire signed [2*WIDTH_IN-1:0] interm_26_154;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul26_154 (.w_in(w_in[154*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_154));
wire signed [2*WIDTH_IN-1:0] interm_26_264;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd72)) mul26_264 (.w_in(w_in[264*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_264));
wire signed [2*WIDTH_IN-1:0] interm_26_316;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul26_316 (.w_in(w_in[316*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_316));
wire signed [2*WIDTH_IN-1:0] interm_26_332;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul26_332 (.w_in(w_in[332*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_332));
wire signed [2*WIDTH_IN-1:0] interm_26_360;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd115)) mul26_360 (.w_in(w_in[360*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_360));
wire signed [2*WIDTH_IN-1:0] interm_26_380;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul26_380 (.w_in(w_in[380*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_380));
wire signed [2*WIDTH_IN-1:0] interm_26_435;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd98)) mul26_435 (.w_in(w_in[435*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_435));
wire signed [2*WIDTH_IN-1:0] interm_26_437;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul26_437 (.w_in(w_in[437*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_437));
wire signed [2*WIDTH_IN-1:0] interm_26_438;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd105)) mul26_438 (.w_in(w_in[438*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_438));
wire signed [2*WIDTH_IN-1:0] interm_26_441;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul26_441 (.w_in(w_in[441*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_441));
wire signed [2*WIDTH_IN-1:0] interm_26_457;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd116)) mul26_457 (.w_in(w_in[457*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_457));
wire signed [2*WIDTH_IN-1:0] interm_26_460;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd100)) mul26_460 (.w_in(w_in[460*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_460));
wire signed [2*WIDTH_IN-1:0] interm_26_528;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd88)) mul26_528 (.w_in(w_in[528*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_528));
wire signed [2*WIDTH_IN-1:0] interm_26_538;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul26_538 (.w_in(w_in[538*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_538));
wire signed [2*WIDTH_IN-1:0] interm_26_540;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul26_540 (.w_in(w_in[540*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_540));
wire signed [2*WIDTH_IN-1:0] interm_26_541;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul26_541 (.w_in(w_in[541*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_541));
wire signed [2*WIDTH_IN-1:0] interm_26_542;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul26_542 (.w_in(w_in[542*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_542));
wire signed [2*WIDTH_IN-1:0] interm_26_544;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd125)) mul26_544 (.w_in(w_in[544*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_544));
wire signed [2*WIDTH_IN-1:0] interm_26_545;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul26_545 (.w_in(w_in[545*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_545));
wire signed [2*WIDTH_IN-1:0] interm_26_546;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd66)) mul26_546 (.w_in(w_in[546*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_546));
wire signed [2*WIDTH_IN-1:0] interm_26_547;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul26_547 (.w_in(w_in[547*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_547));
wire signed [2*WIDTH_IN-1:0] interm_26_565;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul26_565 (.w_in(w_in[565*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_565));
wire signed [2*WIDTH_IN-1:0] interm_26_566;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul26_566 (.w_in(w_in[566*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_566));
wire signed [2*WIDTH_IN-1:0] interm_26_567;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd122)) mul26_567 (.w_in(w_in[567*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_567));
wire signed [2*WIDTH_IN-1:0] interm_26_569;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul26_569 (.w_in(w_in[569*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_569));
wire signed [2*WIDTH_IN-1:0] interm_26_570;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul26_570 (.w_in(w_in[570*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_570));
wire signed [2*WIDTH_IN-1:0] interm_26_572;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul26_572 (.w_in(w_in[572*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_572));
wire signed [2*WIDTH_IN-1:0] interm_26_593;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul26_593 (.w_in(w_in[593*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_593));
wire signed [2*WIDTH_IN-1:0] interm_26_602;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd106)) mul26_602 (.w_in(w_in[602*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_602));
wire signed [2*WIDTH_IN-1:0] interm_26_605;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul26_605 (.w_in(w_in[605*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_605));
wire signed [2*WIDTH_IN-1:0] interm_26_611;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul26_611 (.w_in(w_in[611*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_611));
wire signed [2*WIDTH_IN-1:0] interm_26_635;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd114)) mul26_635 (.w_in(w_in[635*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_635));
wire signed [2*WIDTH_IN-1:0] interm_26_660;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul26_660 (.w_in(w_in[660*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_660));
wire signed [2*WIDTH_IN-1:0] interm_26_664;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd90)) mul26_664 (.w_in(w_in[664*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_664));
wire signed [2*WIDTH_IN-1:0] interm_26_679;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd118)) mul26_679 (.w_in(w_in[679*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_679));
wire signed [2*WIDTH_IN-1:0] interm_26_687;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd73)) mul26_687 (.w_in(w_in[687*WIDTH_IN+:WIDTH_IN]), .w_out(interm_26_687));


wire signed [22-1:0] bias_26 = 22'd76237;

assign n26_out =
$signed(interm_26_97) +
$signed(interm_26_98) +
$signed(interm_26_121) +
$signed(interm_26_125) +
$signed(interm_26_126) +
$signed(interm_26_129) +
$signed(interm_26_154) +
$signed(interm_26_264) +
$signed(interm_26_316) +
$signed(interm_26_332) +
$signed(interm_26_360) +
$signed(interm_26_380) +
$signed(interm_26_435) +
$signed(interm_26_437) +
$signed(interm_26_438) +
$signed(interm_26_441) +
$signed(interm_26_457) +
$signed(interm_26_460) +
$signed(interm_26_528) +
$signed(interm_26_538) +
$signed(interm_26_540) +
$signed(interm_26_541) +
$signed(interm_26_542) +
$signed(interm_26_544) +
$signed(interm_26_545) +
$signed(interm_26_546) +
$signed(interm_26_547) +
$signed(interm_26_565) +
$signed(interm_26_566) +
$signed(interm_26_567) +
$signed(interm_26_569) +
$signed(interm_26_570) +
$signed(interm_26_572) +
$signed(interm_26_593) +
$signed(interm_26_602) +
$signed(interm_26_605) +
$signed(interm_26_611) +
$signed(interm_26_635) +
$signed(interm_26_660) +
$signed(interm_26_664) +
$signed(interm_26_679) +
$signed(interm_26_687) +

$signed(bias_26);



// ---Neuro 27 ---
localparam NEURON_WIDTH_27 = 22;
wire signed [NEURON_WIDTH_27-1:0] n27_out;

wire signed [2*WIDTH_IN-1:0] interm_27_100;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd107)) mul27_100 (.w_in(w_in[100*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_100));
wire signed [2*WIDTH_IN-1:0] interm_27_248;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd107)) mul27_248 (.w_in(w_in[248*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_248));
wire signed [2*WIDTH_IN-1:0] interm_27_302;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul27_302 (.w_in(w_in[302*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_302));
wire signed [2*WIDTH_IN-1:0] interm_27_305;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd73)) mul27_305 (.w_in(w_in[305*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_305));
wire signed [2*WIDTH_IN-1:0] interm_27_348;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd126)) mul27_348 (.w_in(w_in[348*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_348));
wire signed [2*WIDTH_IN-1:0] interm_27_349;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd113)) mul27_349 (.w_in(w_in[349*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_349));
wire signed [2*WIDTH_IN-1:0] interm_27_351;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd118)) mul27_351 (.w_in(w_in[351*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_351));
wire signed [2*WIDTH_IN-1:0] interm_27_385;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul27_385 (.w_in(w_in[385*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_385));
wire signed [2*WIDTH_IN-1:0] interm_27_386;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul27_386 (.w_in(w_in[386*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_386));
wire signed [2*WIDTH_IN-1:0] interm_27_404;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul27_404 (.w_in(w_in[404*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_404));
wire signed [2*WIDTH_IN-1:0] interm_27_414;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd93)) mul27_414 (.w_in(w_in[414*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_414));
wire signed [2*WIDTH_IN-1:0] interm_27_442;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul27_442 (.w_in(w_in[442*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_442));
wire signed [2*WIDTH_IN-1:0] interm_27_457;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd104)) mul27_457 (.w_in(w_in[457*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_457));
wire signed [2*WIDTH_IN-1:0] interm_27_469;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd103)) mul27_469 (.w_in(w_in[469*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_469));
wire signed [2*WIDTH_IN-1:0] interm_27_470;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul27_470 (.w_in(w_in[470*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_470));
wire signed [2*WIDTH_IN-1:0] interm_27_471;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul27_471 (.w_in(w_in[471*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_471));
wire signed [2*WIDTH_IN-1:0] interm_27_493;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd114)) mul27_493 (.w_in(w_in[493*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_493));
wire signed [2*WIDTH_IN-1:0] interm_27_498;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd124)) mul27_498 (.w_in(w_in[498*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_498));
wire signed [2*WIDTH_IN-1:0] interm_27_524;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd96)) mul27_524 (.w_in(w_in[524*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_524));
wire signed [2*WIDTH_IN-1:0] interm_27_525;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd114)) mul27_525 (.w_in(w_in[525*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_525));
wire signed [2*WIDTH_IN-1:0] interm_27_526;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd82)) mul27_526 (.w_in(w_in[526*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_526));
wire signed [2*WIDTH_IN-1:0] interm_27_553;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd115)) mul27_553 (.w_in(w_in[553*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_553));
wire signed [2*WIDTH_IN-1:0] interm_27_554;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul27_554 (.w_in(w_in[554*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_554));
wire signed [2*WIDTH_IN-1:0] interm_27_577;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul27_577 (.w_in(w_in[577*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_577));
wire signed [2*WIDTH_IN-1:0] interm_27_579;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul27_579 (.w_in(w_in[579*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_579));
wire signed [2*WIDTH_IN-1:0] interm_27_580;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul27_580 (.w_in(w_in[580*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_580));
wire signed [2*WIDTH_IN-1:0] interm_27_581;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd114)) mul27_581 (.w_in(w_in[581*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_581));
wire signed [2*WIDTH_IN-1:0] interm_27_607;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd127)) mul27_607 (.w_in(w_in[607*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_607));
wire signed [2*WIDTH_IN-1:0] interm_27_608;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul27_608 (.w_in(w_in[608*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_608));
wire signed [2*WIDTH_IN-1:0] interm_27_634;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul27_634 (.w_in(w_in[634*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_634));
wire signed [2*WIDTH_IN-1:0] interm_27_636;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd126)) mul27_636 (.w_in(w_in[636*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_636));
wire signed [2*WIDTH_IN-1:0] interm_27_637;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul27_637 (.w_in(w_in[637*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_637));
wire signed [2*WIDTH_IN-1:0] interm_27_661;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul27_661 (.w_in(w_in[661*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_661));
wire signed [2*WIDTH_IN-1:0] interm_27_662;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul27_662 (.w_in(w_in[662*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_662));
wire signed [2*WIDTH_IN-1:0] interm_27_677;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul27_677 (.w_in(w_in[677*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_677));
wire signed [2*WIDTH_IN-1:0] interm_27_678;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul27_678 (.w_in(w_in[678*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_678));
wire signed [2*WIDTH_IN-1:0] interm_27_689;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul27_689 (.w_in(w_in[689*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_689));
wire signed [2*WIDTH_IN-1:0] interm_27_690;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd122)) mul27_690 (.w_in(w_in[690*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_690));
wire signed [2*WIDTH_IN-1:0] interm_27_711;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul27_711 (.w_in(w_in[711*WIDTH_IN+:WIDTH_IN]), .w_out(interm_27_711));


wire signed [22-1:0] bias_27 = 22'd54134;

assign n27_out =
$signed(interm_27_100) +
$signed(interm_27_248) +
$signed(interm_27_302) +
$signed(interm_27_305) +
$signed(interm_27_348) +
$signed(interm_27_349) +
$signed(interm_27_351) +
$signed(interm_27_385) +
$signed(interm_27_386) +
$signed(interm_27_404) +
$signed(interm_27_414) +
$signed(interm_27_442) +
$signed(interm_27_457) +
$signed(interm_27_469) +
$signed(interm_27_470) +
$signed(interm_27_471) +
$signed(interm_27_493) +
$signed(interm_27_498) +
$signed(interm_27_524) +
$signed(interm_27_525) +
$signed(interm_27_526) +
$signed(interm_27_553) +
$signed(interm_27_554) +
$signed(interm_27_577) +
$signed(interm_27_579) +
$signed(interm_27_580) +
$signed(interm_27_581) +
$signed(interm_27_607) +
$signed(interm_27_608) +
$signed(interm_27_634) +
$signed(interm_27_636) +
$signed(interm_27_637) +
$signed(interm_27_661) +
$signed(interm_27_662) +
$signed(interm_27_677) +
$signed(interm_27_678) +
$signed(interm_27_689) +
$signed(interm_27_690) +
$signed(interm_27_711) +

$signed(bias_27);



// ---Neuro 28 ---
localparam NEURON_WIDTH_28 = 22;
wire signed [NEURON_WIDTH_28-1:0] n28_out;

wire signed [2*WIDTH_IN-1:0] interm_28_98;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul28_98 (.w_in(w_in[98*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_98));
wire signed [2*WIDTH_IN-1:0] interm_28_99;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd101)) mul28_99 (.w_in(w_in[99*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_99));
wire signed [2*WIDTH_IN-1:0] interm_28_125;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul28_125 (.w_in(w_in[125*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_125));
wire signed [2*WIDTH_IN-1:0] interm_28_152;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd113)) mul28_152 (.w_in(w_in[152*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_152));
wire signed [2*WIDTH_IN-1:0] interm_28_204;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul28_204 (.w_in(w_in[204*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_204));
wire signed [2*WIDTH_IN-1:0] interm_28_207;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd98)) mul28_207 (.w_in(w_in[207*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_207));
wire signed [2*WIDTH_IN-1:0] interm_28_235;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul28_235 (.w_in(w_in[235*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_235));
wire signed [2*WIDTH_IN-1:0] interm_28_263;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul28_263 (.w_in(w_in[263*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_263));
wire signed [2*WIDTH_IN-1:0] interm_28_268;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd88)) mul28_268 (.w_in(w_in[268*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_268));
wire signed [2*WIDTH_IN-1:0] interm_28_271;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd113)) mul28_271 (.w_in(w_in[271*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_271));
wire signed [2*WIDTH_IN-1:0] interm_28_387;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul28_387 (.w_in(w_in[387*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_387));
wire signed [2*WIDTH_IN-1:0] interm_28_415;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd77)) mul28_415 (.w_in(w_in[415*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_415));
wire signed [2*WIDTH_IN-1:0] interm_28_434;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd84)) mul28_434 (.w_in(w_in[434*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_434));
wire signed [2*WIDTH_IN-1:0] interm_28_440;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul28_440 (.w_in(w_in[440*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_440));
wire signed [2*WIDTH_IN-1:0] interm_28_455;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul28_455 (.w_in(w_in[455*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_455));
wire signed [2*WIDTH_IN-1:0] interm_28_461;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd113)) mul28_461 (.w_in(w_in[461*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_461));
wire signed [2*WIDTH_IN-1:0] interm_28_467;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd123)) mul28_467 (.w_in(w_in[467*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_467));
wire signed [2*WIDTH_IN-1:0] interm_28_486;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul28_486 (.w_in(w_in[486*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_486));
wire signed [2*WIDTH_IN-1:0] interm_28_487;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd85)) mul28_487 (.w_in(w_in[487*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_487));
wire signed [2*WIDTH_IN-1:0] interm_28_491;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul28_491 (.w_in(w_in[491*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_491));
wire signed [2*WIDTH_IN-1:0] interm_28_519;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd105)) mul28_519 (.w_in(w_in[519*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_519));
wire signed [2*WIDTH_IN-1:0] interm_28_522;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul28_522 (.w_in(w_in[522*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_522));
wire signed [2*WIDTH_IN-1:0] interm_28_523;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd76)) mul28_523 (.w_in(w_in[523*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_523));
wire signed [2*WIDTH_IN-1:0] interm_28_538;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd110)) mul28_538 (.w_in(w_in[538*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_538));
wire signed [2*WIDTH_IN-1:0] interm_28_546;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd89)) mul28_546 (.w_in(w_in[546*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_546));
wire signed [2*WIDTH_IN-1:0] interm_28_547;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul28_547 (.w_in(w_in[547*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_547));
wire signed [2*WIDTH_IN-1:0] interm_28_551;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd74)) mul28_551 (.w_in(w_in[551*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_551));
wire signed [2*WIDTH_IN-1:0] interm_28_571;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul28_571 (.w_in(w_in[571*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_571));
wire signed [2*WIDTH_IN-1:0] interm_28_572;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul28_572 (.w_in(w_in[572*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_572));
wire signed [2*WIDTH_IN-1:0] interm_28_578;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd114)) mul28_578 (.w_in(w_in[578*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_578));
wire signed [2*WIDTH_IN-1:0] interm_28_579;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul28_579 (.w_in(w_in[579*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_579));
wire signed [2*WIDTH_IN-1:0] interm_28_603;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd114)) mul28_603 (.w_in(w_in[603*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_603));
wire signed [2*WIDTH_IN-1:0] interm_28_604;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd125)) mul28_604 (.w_in(w_in[604*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_604));
wire signed [2*WIDTH_IN-1:0] interm_28_626;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd70)) mul28_626 (.w_in(w_in[626*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_626));
wire signed [2*WIDTH_IN-1:0] interm_28_633;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd99)) mul28_633 (.w_in(w_in[633*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_633));
wire signed [2*WIDTH_IN-1:0] interm_28_660;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul28_660 (.w_in(w_in[660*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_660));
wire signed [2*WIDTH_IN-1:0] interm_28_661;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul28_661 (.w_in(w_in[661*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_661));
wire signed [2*WIDTH_IN-1:0] interm_28_689;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul28_689 (.w_in(w_in[689*WIDTH_IN+:WIDTH_IN]), .w_out(interm_28_689));


wire signed [22-1:0] bias_28 = 22'd64021;

assign n28_out =
$signed(interm_28_98) +
$signed(interm_28_99) +
$signed(interm_28_125) +
$signed(interm_28_152) +
$signed(interm_28_204) +
$signed(interm_28_207) +
$signed(interm_28_235) +
$signed(interm_28_263) +
$signed(interm_28_268) +
$signed(interm_28_271) +
$signed(interm_28_387) +
$signed(interm_28_415) +
$signed(interm_28_434) +
$signed(interm_28_440) +
$signed(interm_28_455) +
$signed(interm_28_461) +
$signed(interm_28_467) +
$signed(interm_28_486) +
$signed(interm_28_487) +
$signed(interm_28_491) +
$signed(interm_28_519) +
$signed(interm_28_522) +
$signed(interm_28_523) +
$signed(interm_28_538) +
$signed(interm_28_546) +
$signed(interm_28_547) +
$signed(interm_28_551) +
$signed(interm_28_571) +
$signed(interm_28_572) +
$signed(interm_28_578) +
$signed(interm_28_579) +
$signed(interm_28_603) +
$signed(interm_28_604) +
$signed(interm_28_626) +
$signed(interm_28_633) +
$signed(interm_28_660) +
$signed(interm_28_661) +
$signed(interm_28_689) +

$signed(bias_28);



// ---Neuro 29 ---
localparam NEURON_WIDTH_29 = 22;
wire signed [NEURON_WIDTH_29-1:0] n29_out;

wire signed [2*WIDTH_IN-1:0] interm_29_102;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul29_102 (.w_in(w_in[102*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_102));
wire signed [2*WIDTH_IN-1:0] interm_29_103;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd97)) mul29_103 (.w_in(w_in[103*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_103));
wire signed [2*WIDTH_IN-1:0] interm_29_120;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd68)) mul29_120 (.w_in(w_in[120*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_120));
wire signed [2*WIDTH_IN-1:0] interm_29_125;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul29_125 (.w_in(w_in[125*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_125));
wire signed [2*WIDTH_IN-1:0] interm_29_128;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul29_128 (.w_in(w_in[128*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_128));
wire signed [2*WIDTH_IN-1:0] interm_29_131;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd109)) mul29_131 (.w_in(w_in[131*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_131));
wire signed [2*WIDTH_IN-1:0] interm_29_132;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd94)) mul29_132 (.w_in(w_in[132*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_132));
wire signed [2*WIDTH_IN-1:0] interm_29_145;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd101)) mul29_145 (.w_in(w_in[145*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_145));
wire signed [2*WIDTH_IN-1:0] interm_29_159;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd78)) mul29_159 (.w_in(w_in[159*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_159));
wire signed [2*WIDTH_IN-1:0] interm_29_160;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd120)) mul29_160 (.w_in(w_in[160*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_160));
wire signed [2*WIDTH_IN-1:0] interm_29_161;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd86)) mul29_161 (.w_in(w_in[161*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_161));
wire signed [2*WIDTH_IN-1:0] interm_29_188;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd111)) mul29_188 (.w_in(w_in[188*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_188));
wire signed [2*WIDTH_IN-1:0] interm_29_199;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd80)) mul29_199 (.w_in(w_in[199*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_199));
wire signed [2*WIDTH_IN-1:0] interm_29_200;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul29_200 (.w_in(w_in[200*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_200));
wire signed [2*WIDTH_IN-1:0] interm_29_215;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul29_215 (.w_in(w_in[215*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_215));
wire signed [2*WIDTH_IN-1:0] interm_29_216;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul29_216 (.w_in(w_in[216*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_216));
wire signed [2*WIDTH_IN-1:0] interm_29_217;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd108)) mul29_217 (.w_in(w_in[217*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_217));
wire signed [2*WIDTH_IN-1:0] interm_29_227;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd74)) mul29_227 (.w_in(w_in[227*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_227));
wire signed [2*WIDTH_IN-1:0] interm_29_238;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd90)) mul29_238 (.w_in(w_in[238*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_238));
wire signed [2*WIDTH_IN-1:0] interm_29_239;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul29_239 (.w_in(w_in[239*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_239));
wire signed [2*WIDTH_IN-1:0] interm_29_244;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd124)) mul29_244 (.w_in(w_in[244*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_244));
wire signed [2*WIDTH_IN-1:0] interm_29_255;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd82)) mul29_255 (.w_in(w_in[255*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_255));
wire signed [2*WIDTH_IN-1:0] interm_29_265;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd83)) mul29_265 (.w_in(w_in[265*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_265));
wire signed [2*WIDTH_IN-1:0] interm_29_267;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd96)) mul29_267 (.w_in(w_in[267*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_267));
wire signed [2*WIDTH_IN-1:0] interm_29_270;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd67)) mul29_270 (.w_in(w_in[270*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_270));
wire signed [2*WIDTH_IN-1:0] interm_29_271;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd116)) mul29_271 (.w_in(w_in[271*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_271));
wire signed [2*WIDTH_IN-1:0] interm_29_272;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd128)) mul29_272 (.w_in(w_in[272*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_272));
wire signed [2*WIDTH_IN-1:0] interm_29_288;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd112)) mul29_288 (.w_in(w_in[288*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_288));
wire signed [2*WIDTH_IN-1:0] interm_29_294;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd95)) mul29_294 (.w_in(w_in[294*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_294));
wire signed [2*WIDTH_IN-1:0] interm_29_295;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd71)) mul29_295 (.w_in(w_in[295*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_295));
wire signed [2*WIDTH_IN-1:0] interm_29_296;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd78)) mul29_296 (.w_in(w_in[296*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_296));
wire signed [2*WIDTH_IN-1:0] interm_29_298;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd92)) mul29_298 (.w_in(w_in[298*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_298));
wire signed [2*WIDTH_IN-1:0] interm_29_327;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul29_327 (.w_in(w_in[327*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_327));
wire signed [2*WIDTH_IN-1:0] interm_29_329;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul29_329 (.w_in(w_in[329*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_329));
wire signed [2*WIDTH_IN-1:0] interm_29_345;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul29_345 (.w_in(w_in[345*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_345));
wire signed [2*WIDTH_IN-1:0] interm_29_351;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd62)) mul29_351 (.w_in(w_in[351*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_351));
wire signed [2*WIDTH_IN-1:0] interm_29_352;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul29_352 (.w_in(w_in[352*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_352));
wire signed [2*WIDTH_IN-1:0] interm_29_356;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd91)) mul29_356 (.w_in(w_in[356*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_356));
wire signed [2*WIDTH_IN-1:0] interm_29_370;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd83)) mul29_370 (.w_in(w_in[370*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_370));
wire signed [2*WIDTH_IN-1:0] interm_29_412;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd95)) mul29_412 (.w_in(w_in[412*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_412));
wire signed [2*WIDTH_IN-1:0] interm_29_415;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd69)) mul29_415 (.w_in(w_in[415*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_415));
wire signed [2*WIDTH_IN-1:0] interm_29_436;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd79)) mul29_436 (.w_in(w_in[436*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_436));
wire signed [2*WIDTH_IN-1:0] interm_29_439;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd85)) mul29_439 (.w_in(w_in[439*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_439));
wire signed [2*WIDTH_IN-1:0] interm_29_465;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(-8'd117)) mul29_465 (.w_in(w_in[465*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_465));
wire signed [2*WIDTH_IN-1:0] interm_29_474;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd73)) mul29_474 (.w_in(w_in[474*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_474));
wire signed [2*WIDTH_IN-1:0] interm_29_490;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd92)) mul29_490 (.w_in(w_in[490*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_490));
wire signed [2*WIDTH_IN-1:0] interm_29_679;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd81)) mul29_679 (.w_in(w_in[679*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_679));
wire signed [2*WIDTH_IN-1:0] interm_29_704;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd75)) mul29_704 (.w_in(w_in[704*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_704));
wire signed [2*WIDTH_IN-1:0] interm_29_705;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd89)) mul29_705 (.w_in(w_in[705*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_705));
wire signed [2*WIDTH_IN-1:0] interm_29_706;
FMUL #(.WIDTH(WIDTH_IN), .FACTOR(8'd73)) mul29_706 (.w_in(w_in[706*WIDTH_IN+:WIDTH_IN]), .w_out(interm_29_706));


wire signed [22-1:0] bias_29 = 22'd8639;

assign n29_out =
$signed(interm_29_102) +
$signed(interm_29_103) +
$signed(interm_29_120) +
$signed(interm_29_125) +
$signed(interm_29_128) +
$signed(interm_29_131) +
$signed(interm_29_132) +
$signed(interm_29_145) +
$signed(interm_29_159) +
$signed(interm_29_160) +
$signed(interm_29_161) +
$signed(interm_29_188) +
$signed(interm_29_199) +
$signed(interm_29_200) +
$signed(interm_29_215) +
$signed(interm_29_216) +
$signed(interm_29_217) +
$signed(interm_29_227) +
$signed(interm_29_238) +
$signed(interm_29_239) +
$signed(interm_29_244) +
$signed(interm_29_255) +
$signed(interm_29_265) +
$signed(interm_29_267) +
$signed(interm_29_270) +
$signed(interm_29_271) +
$signed(interm_29_272) +
$signed(interm_29_288) +
$signed(interm_29_294) +
$signed(interm_29_295) +
$signed(interm_29_296) +
$signed(interm_29_298) +
$signed(interm_29_327) +
$signed(interm_29_329) +
$signed(interm_29_345) +
$signed(interm_29_351) +
$signed(interm_29_352) +
$signed(interm_29_356) +
$signed(interm_29_370) +
$signed(interm_29_412) +
$signed(interm_29_415) +
$signed(interm_29_436) +
$signed(interm_29_439) +
$signed(interm_29_465) +
$signed(interm_29_474) +
$signed(interm_29_490) +
$signed(interm_29_679) +
$signed(interm_29_704) +
$signed(interm_29_705) +
$signed(interm_29_706) +

$signed(bias_29);




/*
 * requantize outputs
 */
wire signed [WIDTH_OUT:0] requant_out [NUM_NEURONS];

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101101000010010101101), .ZERO(9'd0), .SHIFT(31)) requant0 (.w_in(n0_out), .w_out(requant_out[0]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010011010111000110101), .ZERO(9'd0), .SHIFT(30)) requant1 (.w_in(n1_out), .w_out(requant_out[1]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101000100111000110111), .ZERO(9'd0), .SHIFT(31)) requant2 (.w_in(n2_out), .w_out(requant_out[2]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0110000010101010101001), .ZERO(9'd0), .SHIFT(31)) requant3 (.w_in(n3_out), .w_out(requant_out[3]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101111010001101010100), .ZERO(9'd0), .SHIFT(31)) requant4 (.w_in(n4_out), .w_out(requant_out[4]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010110000111110010010), .ZERO(9'd0), .SHIFT(30)) requant5 (.w_in(n5_out), .w_out(requant_out[5]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0110000111011000001010), .ZERO(9'd0), .SHIFT(31)) requant6 (.w_in(n6_out), .w_out(requant_out[6]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101011011011110101101), .ZERO(9'd0), .SHIFT(31)) requant7 (.w_in(n7_out), .w_out(requant_out[7]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010110110111001011011), .ZERO(9'd0), .SHIFT(30)) requant8 (.w_in(n8_out), .w_out(requant_out[8]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010110011001101101001), .ZERO(9'd0), .SHIFT(30)) requant9 (.w_in(n9_out), .w_out(requant_out[9]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101101010011001010000), .ZERO(9'd0), .SHIFT(31)) requant10 (.w_in(n10_out), .w_out(requant_out[10]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b011000110111110000001), .ZERO(9'd0), .SHIFT(30)) requant11 (.w_in(n11_out), .w_out(requant_out[11]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010101001010110011001), .ZERO(9'd0), .SHIFT(30)) requant12 (.w_in(n12_out), .w_out(requant_out[12]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b011110100110010101010), .ZERO(9'd0), .SHIFT(30)) requant13 (.w_in(n13_out), .w_out(requant_out[13]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b011001011011001100100), .ZERO(9'd0), .SHIFT(30)) requant14 (.w_in(n14_out), .w_out(requant_out[14]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101110011011111100001), .ZERO(9'd0), .SHIFT(31)) requant15 (.w_in(n15_out), .w_out(requant_out[15]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0110001111000000110101), .ZERO(9'd0), .SHIFT(31)) requant16 (.w_in(n16_out), .w_out(requant_out[16]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b011001110011010110110), .ZERO(9'd0), .SHIFT(30)) requant17 (.w_in(n17_out), .w_out(requant_out[17]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0110001000011110100111), .ZERO(9'd0), .SHIFT(31)) requant18 (.w_in(n18_out), .w_out(requant_out[18]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010110111000011010011), .ZERO(9'd0), .SHIFT(30)) requant19 (.w_in(n19_out), .w_out(requant_out[19]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101010011111100000110), .ZERO(9'd0), .SHIFT(31)) requant20 (.w_in(n20_out), .w_out(requant_out[20]));

DEQUANT #(.WIDTH_IN(21), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(21'b010000011000001010111), .ZERO(9'd0), .SHIFT(29)) requant21 (.w_in(n21_out), .w_out(requant_out[21]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101111011011100110011), .ZERO(9'd0), .SHIFT(31)) requant22 (.w_in(n22_out), .w_out(requant_out[22]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101111001101011100011), .ZERO(9'd0), .SHIFT(31)) requant23 (.w_in(n23_out), .w_out(requant_out[23]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0111111111010110010010), .ZERO(9'd0), .SHIFT(31)) requant24 (.w_in(n24_out), .w_out(requant_out[24]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0110001000010101011001), .ZERO(9'd0), .SHIFT(31)) requant25 (.w_in(n25_out), .w_out(requant_out[25]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101111101011010011010), .ZERO(9'd0), .SHIFT(31)) requant26 (.w_in(n26_out), .w_out(requant_out[26]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101101101000001110101), .ZERO(9'd0), .SHIFT(31)) requant27 (.w_in(n27_out), .w_out(requant_out[27]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0101100110100011010010), .ZERO(9'd0), .SHIFT(31)) requant28 (.w_in(n28_out), .w_out(requant_out[28]));

DEQUANT #(.WIDTH_IN(22), .WIDTH_OUT(WIDTH_OUT+1), .SCALE(22'b0110001001001111100011), .ZERO(9'd0), .SHIFT(31)) requant29 (.w_in(n29_out), .w_out(requant_out[29]));



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

RELU #(.WIDTH(WIDTH_OUT + 1)) relu10 (.w_in(requant_out[10]), .w_out(w_out[10*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu11 (.w_in(requant_out[11]), .w_out(w_out[11*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu12 (.w_in(requant_out[12]), .w_out(w_out[12*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu13 (.w_in(requant_out[13]), .w_out(w_out[13*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu14 (.w_in(requant_out[14]), .w_out(w_out[14*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu15 (.w_in(requant_out[15]), .w_out(w_out[15*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu16 (.w_in(requant_out[16]), .w_out(w_out[16*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu17 (.w_in(requant_out[17]), .w_out(w_out[17*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu18 (.w_in(requant_out[18]), .w_out(w_out[18*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu19 (.w_in(requant_out[19]), .w_out(w_out[19*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu20 (.w_in(requant_out[20]), .w_out(w_out[20*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu21 (.w_in(requant_out[21]), .w_out(w_out[21*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu22 (.w_in(requant_out[22]), .w_out(w_out[22*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu23 (.w_in(requant_out[23]), .w_out(w_out[23*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu24 (.w_in(requant_out[24]), .w_out(w_out[24*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu25 (.w_in(requant_out[25]), .w_out(w_out[25*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu26 (.w_in(requant_out[26]), .w_out(w_out[26*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu27 (.w_in(requant_out[27]), .w_out(w_out[27*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu28 (.w_in(requant_out[28]), .w_out(w_out[28*WIDTH_OUT+:WIDTH_OUT]));

RELU #(.WIDTH(WIDTH_OUT + 1)) relu29 (.w_in(requant_out[29]), .w_out(w_out[29*WIDTH_OUT+:WIDTH_OUT]));



endmodule : FC1
