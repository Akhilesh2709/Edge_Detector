module design_1(out,in1,clk,reset);
  input clk,reset,in1;
  output reg out;
  reg q;
  always@(posedge clk) begin
    if(reset) begin
      q<=0;
    end
    else begin
          q<=in1;
        end
  end
  assign out=in1 && !(q);
  
endmodule
