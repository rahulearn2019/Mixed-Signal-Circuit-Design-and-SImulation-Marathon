# Mixed-Signal-Circuit-Design-and-SImulation-Marathon
# In Memory Logic Operations with 8T SRAM cells
## Abstract
Processing in memory (PIM) aims at improving computational speed by bringing the computational engine to memory and avoid the energy consumption associated with existing von Neumann style of computing. Improve in compute ability by reduction in transistor size is approaching its limit, and with increase in compute intensive tasks involved with
edge computing, IoT applications etc. we need to look for alternative techniques like – In/near memory computing. In this paper we will perform logical operations using 8TSRAM cells to overcome the von Neumann bottleneck.

## Reference Circuit Diagram
![WhatsApp Image 2022-09-28 at 23 29 54](https://user-images.githubusercontent.com/50217106/194724678-3c4e42d0-8754-498e-bb03-97789fe0c4a1.jpeg)
Fig1. 8TSRAM cell


![WhatsApp Image 2022-09-28 at 21 59 56](https://user-images.githubusercontent.com/50217106/194724684-1cf04866-94d1-413f-a08f-7c6fc0bc19e0.jpeg)
Fig 2. Timing analysis


![WhatsApp Image 2022-09-28 at 21 28 35](https://user-images.githubusercontent.com/50217106/194724687-e951218d-5f55-4a83-912a-f4140e5f5634.jpeg)
Fig 3. Overall design

## Circuit Diagram in Esim
![Screenshot 2022-10-08 214221](https://user-images.githubusercontent.com/50217106/194720051-3d5bb197-2679-4b34-a8b7-349546a19881.png)

## Operation
8TSRAM cells are written with values either 0 or 1. The value stored is then fed to the read circuitry of 8TSRAM cells(Gate of the nfets)
The RBL(Read Bit line) capacitor is precharged. Both 8TSRAM cells are written with 0 or 1, which is equivalent to providing input to a logic GATE. After the values are written, a read bit line enable mosfet switches on. This happens together with a read word line being enabled. This allows the precharged capacitor to discharge via any of the two nfets if their gate potential is high( gate potential high means that 8TSRAM cell has logic 1 written to it). This makes the precahrged capacitor potential mimic a logic value corresponding to a NOR operation. 
This NOR output from capacitor is input to a CMOS inverter to generate an OR operation.
The verilog code of MUX gets input Data[1:0]. When Sel(select line) is 1 the output from the analog port generating logic operation OR is chosen. When Sel is 0 the output from the analog port generating NOR is chosen. 

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
* /home/tiw.rahul45/eSim-Workspace/LOGICwithSRAM/LOGICwithSRAM.cir

* EESchema Netlist Version 1.1 (Spice format) creation date: Sat 08 Oct 2022 09:16:51 PM IST

* To exclude a component from the Spice Netlist add [Spice_Netlist_Enabled] user FIELD set to: N
* To reorder the component spice node sequence add [Spice_Node_Sequence] user FIELD and define sequence: 2,1,0

* Sheet Name: /
SC7  Net-_SC4-Pad2_ Q1 Net-_SC4-Pad3_ Net-_SC4-Pad3_ sky130_fd_pr__pfet_01v8		
SC4  Q1 Net-_SC4-Pad2_ Net-_SC4-Pad3_ Net-_SC4-Pad3_ sky130_fd_pr__pfet_01v8		
SC8  Net-_SC4-Pad2_ Q1 GND GND sky130_fd_pr__nfet_01v8		
SC5  Q1 Net-_SC4-Pad2_ GND GND sky130_fd_pr__nfet_01v8		
SC9  WBLB1 WWL Net-_SC4-Pad2_ GND sky130_fd_pr__nfet_01v8		
SC2  Q1 WWL WBL1 GND sky130_fd_pr__nfet_01v8		
v3  Net-_SC4-Pad3_ GND DC		
v6  WBLB1 GND pulse		
v1  WBL1 GND pulse		
SC13  Q2 Net-_SC13-Pad2_ Net-_SC13-Pad3_ Net-_SC13-Pad3_ sky130_fd_pr__pfet_01v8		
SC15  Net-_SC13-Pad2_ Q2 Net-_SC13-Pad3_ Net-_SC13-Pad3_ sky130_fd_pr__pfet_01v8		
SC16  Net-_SC13-Pad2_ Q2 GND GND sky130_fd_pr__nfet_01v8		
SC14  Q2 Net-_SC13-Pad2_ GND GND sky130_fd_pr__nfet_01v8		
SC12  Q2 WWL WBL2 GND sky130_fd_pr__nfet_01v8		
SC17  WBLB2 WWL Net-_SC13-Pad2_ GND sky130_fd_pr__nfet_01v8		
v8  Net-_SC13-Pad3_ GND DC		
v9  WBLB2 GND pulse		
v7  WBL2 GND pulse		
SC23  GND Q2 Net-_SC22-Pad1_ GND sky130_fd_pr__nfet_01v8		
SC22  Net-_SC22-Pad1_ RWL NOR GND sky130_fd_pr__nfet_01v8		
SC20  GND Q1 Net-_SC19-Pad1_ GND sky130_fd_pr__nfet_01v8		
SC19  Net-_SC19-Pad1_ RWL NOR GND sky130_fd_pr__nfet_01v8		
v10  RWL GND pulse		
SC21  NOR GND sky130_fd_pr__cap_mim_m3_1		
U2  Q1 plot_v1		
U7  Q2 plot_v1		
U4  NOR plot_v1		
U1  WBL1 plot_v1		
U6  WBL2 plot_v1		
U8  WBLB2 plot_v1		
U9  RWL plot_v1		
scmode1  SKY130mode		
U5  WBLB1 plot_v1		
v12  RBLpre GND pulse		
v2  WWL GND pulse		
U3  WWL plot_v1		
SC1  RBLpre RBLpreEn NOR Net-_SC1-Pad4_ sky130_fd_pr__pfet_01v8		
v5  Net-_SC1-Pad4_ GND DC		
v4  RBLpreEn GND pulse		
U10  RBLpre plot_v1		
U11  RBLpreEn plot_v1		
X11  NOR Net-_U13-Pad1_ rahul_inv		
X12  Net-_U13-Pad1_ Net-_U15-Pad1_ rahul_inv		
U13  Net-_U13-Pad1_ Net-_U12-Pad1_ adc_bridge_1		
U15  Net-_U15-Pad1_ Net-_U12-Pad2_ adc_bridge_1		
U12  Net-_U12-Pad1_ Net-_U12-Pad2_ Net-_U12-Pad3_ Net-_U12-Pad4_ rahul_mux		
U14  SEL Net-_U12-Pad3_ adc_bridge_1		
v11  SEL GND pulse		
U16  Net-_U12-Pad4_ LOGIC dac_bridge_1		
U17  LOGIC plot_v1		
U18  SEL plot_v1		

.end




## Ngspice Plots
1. Both SRAM cells written with 1
![Screenshot 2022-10-08 212959](https://user-images.githubusercontent.com/50217106/194720163-5b158bfd-675d-4006-af46-697bf8060b00.png)

2. Both SRAM cells are written with 0
![Screenshot 2022-10-09 021100](https://user-images.githubusercontent.com/50217106/194727650-7b24ed84-5ad7-4ea2-b32f-64a379169fb8.png)

3. When the cells are written with 0 and 1
![Screenshot 2022-10-09 021831](https://user-images.githubusercontent.com/50217106/194727655-7ecf51fa-9000-435b-bc53-b6c6fdf2dc63.png)


The logic operation starts after the Read word line is enabled. It is shown by the white line that runs vertically throught the plot. SInce input to MUX is both the Logic NOR and Logic OR, variation in select line results in different outputs(logic operations NOR and OR)


The below plots are for the case where bith 8TSRAM cells are written with 1.
  ![Screenshot 2022-10-08 233425](https://user-images.githubusercontent.com/50217106/194721800-69e27837-f007-437a-b5d2-720b678f1fb9.png)
                           Fig1       




  ![Screenshot 2022-10-08 233410](https://user-images.githubusercontent.com/50217106/194721790-e741a020-7d4e-4db1-9a8a-324948b58455.png) 
                           Fig2    


  ![Screenshot 2022-10-08 233359](https://user-images.githubusercontent.com/50217106/194721778-05ead638-2aba-4ee7-b0ec-9816c7181469.png)
                           Fig3


  ![Screenshot 2022-10-08 233516](https://user-images.githubusercontent.com/50217106/194721875-1ac6464a-beaf-4978-abed-3f01bd24a860.png)
                           Fig4



  ![Screenshot 2022-10-08 233530](https://user-images.githubusercontent.com/50217106/194721882-9bd196d7-add7-4e4a-8d00-374285aa63cf.png)
                           Fig5        



  ![Screenshot 2022-10-08 233538](https://user-images.githubusercontent.com/50217106/194721884-002eddc2-fe0e-451c-8e4d-f9b7e8c997f4.png)
                           Fig6            



![Screenshot 2022-10-08 233459](https://user-images.githubusercontent.com/50217106/194721889-672470c1-ff71-470e-b5cf-3da94f56a341.png)
			Fig7

![Screenshot 2022-10-08 233437](https://user-images.githubusercontent.com/50217106/194721898-3127f68e-570f-4a6b-81be-a5d4c5f0737a.png)
			Fig8

 
 Fig1. Precharging of read bit line
 
 Fig2. Mux select line variation
 
 Fig3. Output Logic
 
 Fig4. NOR capacitor voltage variation
 
 Fig5. 8TSRAM Cell1 written with 1
 
 Fig6. 8TSRAM Cell2 wrritten with 
 
 Fig7. Read Word Line
 
 Fig8. Read But Line precharge enable(PMOS switch)
## Steps to run Ngveri model
1.   Open eSim
2.   Run NgVeri-Makerchip
3.   Add top level verilog file in Makerchip Tab, and confirm waveform
4.   Click on NgVeri tab, convert verilog to ngspice, model created successfully
5.  Make schematic on esim, integrate subcircuit of inverter created seperately. The 8TSRAM cells can also be present int he schematic in subcircuit form.
6.  Debug for errors, by ERC checks, ignore conflict errors and global label errors, generate netlist, convert kicad to ngspice
7.  Provide source informations, sky130 component library information, path to any subcircuits used
8.  Generate simulation


 
## Acknowledgements

1. FOSSEE, IIT Bombay
2. Steve Hoover, Founder, Redwood EDA
3. Kunal Ghosh, Co-founder, VSD Corp. Pvt. Ltd. - kunalpghosh@gmail.com
4. Sumanto Kar, eSim Team, FOSSEE
   
## References
[1] Amogh Agrawal, Akhilesh Jaisawal, Chankyu Lee and Kaushik Roy,
“X-SRAM: Enabling In-memory Boolean Computations in CMOS
Static Random Access Memories”. Circuits and Systems I: Regular
Papers, IEEE Transactions on PP(99), December 2017
[2] Sparsh Mittal, Gaurav Verma, Brajesh Kaushik, Farooq A. Khanday,
“A Survey of SRAM-based Processing-in-Memory Techniques and
Applications”. Journal of Systems Architecture, Volume 119, October
2021, 102276



 

