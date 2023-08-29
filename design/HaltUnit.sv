`timescale 1ns / 1ps

module haltUnit (

	input logic clk,
        input logic [6:0] opcode,
        output logic [6:0] opcodeexit
    
);

	reg haltReg;
	initial haltReg = 0; 
        
        always @(negedge clk)begin
	 if(opcode == 7'b0000001)haltReg <= 1;
	end

	assign opcodeexit = (haltReg) ? 7'b0 : opcode;

endmodule
