lass scoreboard;
  int compare_cnt;
  logic q;
  
  mailbox mon_to_sb;
  
  function new(mailbox mon_to_sb);
    this.mon_to_sb=mon_to_sb;
  endfunction
  
  task run;
    forever begin
      transaction tr;
      tr=new();
      mon_to_sb.get(tr);
      
      if((tr.in1 && (!q)) == tr.out) begin
        $display("matched in1=%d out=%d",tr.in1,tr.out);
      end
      else begin
        $display("not matched in=%0d out=%0d",tr.in1,tr.out);
      end
      compare_cnt++;
    end
  endtask
 endclass
