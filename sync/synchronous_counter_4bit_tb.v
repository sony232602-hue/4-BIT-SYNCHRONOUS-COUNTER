`timescale 1ns/1ps

module synchronous_counter_4bit_tb;

    reg clk;
    reg reset;
    wire [3:0] q;

    // Instantiate the Design Under Test
    synchronous_counter_4bit uut (
        .clk   (clk),
        .reset (reset),
        .q     (q)
    );

    // Clock generation
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin

        // Create waveform file
        $dumpfile("waveform.vcd");
        $dumpvars(0, synchronous_counter_4bit_tb);

        // Apply reset
        reset = 1'b1;
        #10;

        // Release reset
        reset = 1'b0;

        // Allow counter to run
        #170;

        $finish;
    end

    // Display simulation results
    initial begin
        $monitor(
            "Time=%0t | Reset=%b | Clock=%b | Count=%b | Decimal=%0d",
            $time, reset, clk, q, q
        );
    end

endmodule
