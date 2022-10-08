# Mixed-Signal-Circuit-Design-and-SImulation-Marathon
##In Memory Logic Operations with 8T SRAM cells
###Verilog code
module rahul_mux(data, sel, out);

input [1:0] data;
input sel;
output out;

assign out = sel?data[1]:data[0];

endmodule

###Makerchip
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




###Netlists
 */home/tiw.rahul45/esim-workspace/logicwithsram/logicwithsram.cir

.include rahul_inv.sub
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__inductors.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__r+c.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__diode_pd2nw_11v0.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__linear.model.spice"
.lib "/usr/share/local/sky130_fd_pr/models/sky130.lib.spice" tt
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__diode_pw2nd_11v0.model.spice"
.include "/usr/share/local/sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice"
xsc7 net-_sc4-pad2_ q1 net-_sc4-pad3_ net-_sc4-pad3_ sky130_fd_pr__pfet_01v8 
xsc4 q1 net-_sc4-pad2_ net-_sc4-pad3_ net-_sc4-pad3_ sky130_fd_pr__pfet_01v8 
xsc8 net-_sc4-pad2_ q1 gnd gnd sky130_fd_pr__nfet_01v8 
xsc5 q1 net-_sc4-pad2_ gnd gnd sky130_fd_pr__nfet_01v8 
xsc9 wblb1 wwl net-_sc4-pad2_ gnd sky130_fd_pr__nfet_01v8 
xsc2 q1 wwl wbl1 gnd sky130_fd_pr__nfet_01v8 
v3 net-_sc4-pad3_ gnd  dc 1.8
v6  wblb1 gnd pulse(1.8 0 0 5n 5n 100n 1000n)
v1  wbl1 gnd pulse(0 1.8 0 5n 5n 100n 1000n)
xsc13 q2 net-_sc13-pad2_ net-_sc13-pad3_ net-_sc13-pad3_ sky130_fd_pr__pfet_01v8 
xsc15 net-_sc13-pad2_ q2 net-_sc13-pad3_ net-_sc13-pad3_ sky130_fd_pr__pfet_01v8 
xsc16 net-_sc13-pad2_ q2 gnd gnd sky130_fd_pr__nfet_01v8 
xsc14 q2 net-_sc13-pad2_ gnd gnd sky130_fd_pr__nfet_01v8 
xsc12 q2 wwl wbl2 gnd sky130_fd_pr__nfet_01v8 
xsc17 wblb2 wwl net-_sc13-pad2_ gnd sky130_fd_pr__nfet_01v8 
v8 net-_sc13-pad3_ gnd  dc 1.8
v9  wblb2 gnd pulse(1.8 0 0 5n 5n 100n 1000n)
v7  wbl2 gnd pulse(0 1.8 0 5n 5n 100n 1000n)
xsc23 gnd q2 net-_sc22-pad1_ gnd sky130_fd_pr__nfet_01v8 
xsc22 net-_sc22-pad1_ rwl nor gnd sky130_fd_pr__nfet_01v8 
xsc20 gnd q1 net-_sc19-pad1_ gnd sky130_fd_pr__nfet_01v8 
xsc19 net-_sc19-pad1_ rwl nor gnd sky130_fd_pr__nfet_01v8 
v10  rwl gnd pulse(1.8 0 0 5n 5n 450n 1000n)
xsc21 nor gnd sky130_fd_pr__cap_mim_m3_1 
* u2  q1 plot_v1
* u7  q2 plot_v1
* u4  nor plot_v1
* u1  wbl1 plot_v1
* u6  wbl2 plot_v1
* u8  wblb2 plot_v1
* u9  rwl plot_v1
* s c m o d e
* u5  wblb1 plot_v1
v12  rblpre gnd pulse(0 1.8 0 5n 5n 190n 1000n)
v2  wwl gnd pulse(0 1.8 0 5n 5n 100n 1000n)
* u3  wwl plot_v1
xsc1 rblpre rblpreen nor net-_sc1-pad4_ sky130_fd_pr__pfet_01v8 
v5 net-_sc1-pad4_ gnd  dc 1.8
v4  rblpreen gnd pulse(1.8 0 0 5n 5n 100n 1000n)
* u10  rblpre plot_v1
* u11  rblpreen plot_v1
x11 nor net-_u13-pad1_ rahul_inv
x12 net-_u13-pad1_ net-_u15-pad1_ rahul_inv
* u13  net-_u13-pad1_ net-_u12-pad1_ adc_bridge_1
* u15  net-_u15-pad1_ net-_u12-pad2_ adc_bridge_1
* u12  net-_u12-pad1_ net-_u12-pad2_ net-_u12-pad3_ net-_u12-pad4_ rahul_mux
* u14  sel net-_u12-pad3_ adc_bridge_1
v11  sel gnd pulse(1.8 0 0 5n 5n 250n 500n)
* u16  net-_u12-pad4_ logic dac_bridge_1
* u17  logic plot_v1
* u18  sel plot_v1
a1 [net-_u13-pad1_ ] [net-_u12-pad1_ ] u13
a2 [net-_u15-pad1_ ] [net-_u12-pad2_ ] u15
a3 [net-_u12-pad1_ net-_u12-pad2_ ] [net-_u12-pad3_ ] [net-_u12-pad4_ ] u12
a4 [sel ] [net-_u12-pad3_ ] u14
a5 [net-_u12-pad4_ ] [logic ] u16
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u13 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u15 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             rahul_mux, NgSpice Name: rahul_mux
.model u12 rahul_mux(rise_delay=1.0e-9 fall_delay=1.0e-9 input_load=1.0e-12 instance_id=1 ) 
* Schematic Name:                             adc_bridge_1, NgSpice Name: adc_bridge
.model u14 adc_bridge(in_low=1.0 in_high=2.0 rise_delay=1.0e-9 fall_delay=1.0e-9 ) 
* Schematic Name:                             dac_bridge_1, NgSpice Name: dac_bridge
.model u16 dac_bridge(out_low=0.0 out_high=5.0 out_undef=0.5 input_load=1.0e-12 t_rise=1.0e-9 t_fall=1.0e-9 ) 
.tran 100e-09 1e-06 0e-00

* Control Statements 
.control
run
print allv > plot_data_v.txt
print alli > plot_data_i.txt
plot v(q1) v(q2)+6 v(nor)+12 v(rwl)+18 v(logic)+24 v(sel)+30
.endc
.end
###STeps to run generate Ngveri Model
