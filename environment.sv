class env;
  agent agv;
  scoreboard sb;
  
  mailbox mon_to_sb;
  
  function new(virtual add_if vif);
    mon_to_sb=new();
    agv=new(vif,mon_to_sb);
    sb=new(mon_to_sb);
  endfunction
  
  task run();
    fork
      agv.run();
      sb.run();
    join_any;
    wait(agv.gen.count== sb.compare_cnt);
    $finish();
  endtask
endclass
