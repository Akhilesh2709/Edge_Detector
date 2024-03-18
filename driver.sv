class driver;
  virtual add_if vif;
  mailbox gen_to_drv;
  transaction tr;
  
  function new(mailbox gen_to_drv,virtual add_if vif);
    this.gen_to_drv=gen_to_drv;
    this.vif=vif;
  endfunction
  
  task run;
  forever begin
    @(posedge vif.clk)
    gen_to_drv.get(tr);
    vif.in1<=tr.in1;
    @(posedge vif.clk)
    tr.out<=vif.out;
  end
  endtask
endclass
    
