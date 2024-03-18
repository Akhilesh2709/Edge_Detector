`include "interface.sv"
`include "base_test.sv"

module tb_top;
  bit clk;
  bit reset;
  always #5 clk=~clk;
  add_if vif(clk,reset);
  design_1 dut(.clk(vif.clk),.reset(reset),.in1(vif.in1),.out(vif.out));
  base_test t1(vif);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    clk=0;
    reset=1;
    #4 ;
    reset=0;
  end
endmodule
