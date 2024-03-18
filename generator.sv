class generator ;
  transaction tr;
  mailbox gen_to_drv;
  int count;
  
  function new(mailbox gen_to_drv);
    this.gen_to_drv=gen_to_drv;
  endfunction
  
  task run;
    
    repeat(count) begin
      tr=new();
      tr.randomize();
      gen_to_drv.put(tr);
    end
  endtask
endclass
