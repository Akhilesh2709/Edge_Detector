# Edge_Detector
Edge Detector Design with complete system verilog tb architecture

Testbench Architecture  consists of:
1.	Transaction class
2.	Generator class
3.	Interface
4.	Driver class
5.	Monitor class
6.	Agent class
7.	Scoreboard
8.	Environment
9.	 Base test
10.	 Tb_top module

Port Declaration:
Design Module consists of 3 Inputs namely in_1, Clock, Reset and an Output Out. I have also considered a reg Q, which is a D flip flop output. 


Design :
Design code is written in Verilog language (.v file format). 
Given an input to D flip flop and the output of flip flop is measured at every positive edge of clock, it is captured in reg Q. Hence, Output is assigned by giving the two inputs, in_1 AND inversion of D flip flop output which is stored in Q.
When reset is given the output and D-ff should be 0(reset condition at every posedge of clock) .
