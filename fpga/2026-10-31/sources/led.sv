`timescale 1ns / 1ps
module led(
        input clk,
        input [7:0] result,
        
        output reg ledA,
        output reg ledB,
        output reg ledC,
        output reg ledD,
        output reg ledE,
        output reg ledF,
        output reg ledG,
        output reg ledDP

    );
    always @(posedge clk) begin
        case (result)
            0:  begin
                ledA <= 0;
                ledB <= 0;
                ledC <= 0;
                ledD <= 0;
                ledE <= 0;
                ledF <= 0;
                ledG <= 1;
                ledDP <=1;
                end
            1:  begin
                ledA <= 1;
                ledB <= 0;
                ledC <= 0;
                ledD <= 1;
                ledE <= 1;
                ledF <= 1;
                ledG <= 1;
                ledDP <=1;
                end
            2:  begin
                ledA <= 0;
                ledB <= 0;
                ledC <= 1;
                ledD <= 0;
                ledE <= 0;
                ledF <= 1;
                ledG <= 0;
                ledDP <=1;
                end
            3:  begin
                ledA <= 0;
                ledB <= 0;
                ledC <= 0;
                ledD <= 0;
                ledE <= 1;
                ledF <= 1;
                ledG <= 0;
                ledDP <=1;
                end
            4:  begin
                ledA <= 1;
                ledB <= 0;
                ledC <= 0;
                ledD <= 1;
                ledE <= 1;
                ledF <= 0;
                ledG <= 0;
                ledDP <=1;
                end
            5:  begin
                ledA <= 0;
                ledB <= 1;
                ledC <= 0;
                ledD <= 0;
                ledE <= 1;
                ledF <= 0;
                ledG <= 0;
                ledDP <=1;
                end
            6:  begin
                ledA <= 0;
                ledB <= 1;
                ledC <= 0;
                ledD <= 0;
                ledE <= 0;
                ledF <= 0;
                ledG <= 0;
                ledDP <=1;
                end
            7:  begin
                ledA <= 0;
                ledB <= 0;
                ledC <= 0;
                ledD <= 1;
                ledE <= 1;
                ledF <= 1;
                ledG <= 1;
                ledDP <=1;
                end
            8:  begin
                ledA <= 0;
                ledB <= 0;
                ledC <= 0;
                ledD <= 0;
                ledE <= 0;
                ledF <= 0;
                ledG <= 0;
                ledDP <=1;
                end
            9:  begin
                ledA <= 0;
                ledB <= 0;
                ledC <= 0;
                ledD <= 1;
                ledE <= 1;
                ledF <= 0;
                ledG <= 0;
                ledDP <=1;
                end
            default: begin
                ledA <= 1;
                ledB <= 1;
                ledC <= 1;
                ledD <= 1;
                ledE <= 1;
                ledF <= 1;
                ledG <= 1;
                ledDP <=0;
                end
        endcase
    end
endmodule
