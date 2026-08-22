`timescale 1ns/1ps

module synchronous_counter_4bit (
    input  wire       clk,
    input  wire       reset,
    output reg  [3:0] q
);

    // 4-bit synchronous up counter
    always @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= q + 4'b0001;
    end

endmodule
