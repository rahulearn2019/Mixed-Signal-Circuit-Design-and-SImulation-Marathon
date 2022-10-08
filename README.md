# Mixed-Signal-Circuit-Design-and-SImulation-Marathon
# In Memory Logic Operations with 8T SRAM cells
## Abstract
Processing in memory (PIM) aims at improving computational speed by bringing the computational engine to memory and avoid the energy consumption associated with existing von Neumann style of computing. Improve in compute ability by reduction in transistor size is approaching its limit, and with increase in compute intensive tasks involved with
edge computing, IoT applications etc. we need to look for alternative techniques like – In/near memory computing. In this paper we will perform logical operations using 8TSRAM cells to overcome the von Neumann bottleneck.


## Circuit Diagram in Esim
![Screenshot 2022-10-08 214221](https://user-images.githubusercontent.com/50217106/194720051-3d5bb197-2679-4b34-a8b7-349546a19881.png)


## Verilog code
module rahul_mux(data, sel, out);

input [1:0] data;
input sel;
output out;

assign out = sel?data[1]:data[0];

endmodule

## Makerchip

\TLV_version 1d: tl-x.org
\SV
/* verilator lint_off UNUSED*/  /* verilator lint_off DECLFILENAME*/  /* verilator lint_off BLKSEQ*/  /* verilator lint_off WIDTH*/  /* verilator lint_off SELRANGE*/  /* verilator lint_off PINCONNECTEMPTY*/  /* verilator lint_off DEFPARAM*/  /* verilator lint_off IMPLICIT*/  /* verilator lint_off COMBDLY*/  /* verilator lint_off SYNCASYNCNET*/  /* verilator lint_off UNOPTFLAT */  /* verilator lint_off UNSIGNED*/  /* verilator lint_off CASEINCOMPLETE*/  /* verilator lint_off UNDRIVEN*/  /* verilator lint_off VARHIDDEN*/  /* verilator lint_off CASEX*/  /* verilator lint_off CASEOVERLAP*/  /* verilator lint_off PINMISSING*/   /* verilator lint_off BLKANDNBLK*/  /* verilator lint_off MULTIDRIVEN*/     /* verilator lint_off WIDTHCONCAT*/  /* verilator lint_off ASSIGNDLY*/  /* verilator lint_off MODDUP*/  /* verilator lint_off STMTDLY*/  /* verilator lint_off LITENDIAN*/  /* verilator lint_off INITIALDLY*/  
//Your Verilog/System Verilog Code Starts Here:
module rahul_mux(data, sel, out);

input [1:0] data;
input sel;
output out;

assign out = sel?data[1]:data[0];

endmodule


//Top Module Code Starts here:
	module top(input logic clk, input logic reset, input logic [31:0] cyc_cnt, output logic passed, output logic failed);
		logic  [1:0] data;//input
		logic  sel;//input
		logic  out;//output
//The $random() can be replaced if user wants to assign values
		assign data = $random();
		assign sel = $random();
		rahul_mux rahul_mux(.data(data), .sel(sel), .out(out));
	
\TLV
//Add \TLV here if desired                                     
\SV
endmodule




## Netlists




## Ngspice Plots
![Screenshot 2022-10-08 212959](https://user-images.githubusercontent.com/50217106/194720163-5b158bfd-675d-4006-af46-697bf8060b00.png)

