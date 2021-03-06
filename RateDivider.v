module RateDivider(Q, clk, reset, enable, load);
	
	input clk;
	input reset;
	input enable;
	input [27:0] load; // i.e. Calculated starting point for larger periods
	output reg [27:0] Q; // Output the 'new frequency'
	
	always @(posedge clk, negedge reset) // At rising edge
	begin
			if (reset == 1'b0) // If reset is 0...
				Q <= load; // Reset the circuit
			else if (enable == 1'b1) // If enable is 1...
			begin
				if (Q == 28'b0) // If output is already 0...
					Q[27:0] <= load[27:0]; // Re-load the circuit
				else // Output is not 0 i.e. we still need to keep going
					Q <= Q - 1'b1; // Subtract 1
			end
			else  // Enable is 0, reset is 1 
				Q <= Q; // Maintain output
	end

endmodule
