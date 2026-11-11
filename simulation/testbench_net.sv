// Defines the simulation time resolution
`timescale 1ns/1ps

module testbench_net();
    parameter datawidth = 8;
    parameter input_size = 28 * 28; // Size of the input vector (for a 28x28 image)
    parameter test_size = 10000; // Number of test cases
    parameter inputFile = "./data/input.mif"; // File containing test input vectors
    parameter outputFile = "./data/target.mif"; // File containing expected output values

    reg [datawidth - 1:0] inputreg [input_size * test_size - 1:0]; // Array to store all test inputs
    reg [datawidth - 1:0] targetreg [test_size - 1:0]; // Array to store all expected outputs

    reg clk; // Clock signal

    reg [datawidth-1 : 0] input_one [input_size-1:0]; // Array to hold a single test input vector
    wire [datawidth*input_size-1 : 0] oneD; // Wire to concatenate the input vector for the neural network
    reg [datawidth-1:0] out; // Output of the neural network

    // Convert the 2D input array into a 1D wire format for the neural network
    generate
        genvar j;
        for (j = 0; j < input_size; j = j + 1) begin : loop
            assign oneD[datawidth*(j+1)-1 : datawidth*j] = input_one[j];
        end
    endgenerate

    // Instance of the neural network model
    reg [8*10-1:0] net_data_out;
    top_clk net_1(
    .clk(clk),
    .rst(1'b0),
    .w_in(oneD),

    .r_out(net_data_out)
    );

    //split output from network
    wire [8-1:0] output_one [9:0];
    generate
            for (j = 0; j < 10; j = j + 1) begin : loop1
                    assign output_one[j] = net_data_out[8*(j+1)-1 : 8*j];
            end
        endgenerate

        //get the classification result
    reg [8-1:0] max;
    reg [4:0] z;
    always @(*) begin
        max = output_one[0];
        out = 0;
            for (z = 1; z < 10; z = z +1) begin
                    if (max< output_one[z]) begin
                        max = output_one[z];
                        out =z;
                    end
            end
    end

     // Clock generation: toggles every 10 time units
    initial forever begin
        clk = 0; #10;
        clk = 1; #10;
    end

    initial begin
    // Read input and target data from files
        $readmemb(inputFile, inputreg, 0, input_size*test_size-1);
        $readmemb(outputFile, targetreg, 0, test_size-1);

    end


    int count_test=0;// Counter to keep track of the number of processed test cases
    int i;// Loop counter for loading inputs
    real k=0;// Counter for correct predictions

    always @(posedge clk) begin
        // If all test cases have been processed, print the accuracy and finish the simulation
        if (count_test == test_size+3 ) begin
            $display("test accuracy: %f", k/test_size);
            $finish;
        end
        else begin
            if (count_test < test_size) begin
                for (i = 0; i < input_size; i = i + 1) begin
                    // Load the next test input into the neural network
                    input_one[i] <= inputreg[input_size*count_test+i];
                end
            end
                // Compare the neural network's output with the expected output
            if (count_test >= 3 && out==targetreg[count_test-3]) begin
                k<=k+1;
            end
            // Display the current inference and the expected target
            if (count_test >= 3)
                $display("%d- Inference:%d, Target: %d ",count_test-3, out, targetreg[count_test-3]);
            count_test <= count_test + 1;
        end
    end
endmodule
