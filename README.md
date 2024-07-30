# RISC_V_Learn

Command to run Live Testbench:
  $ iverilog -DBENCH -DBOARD_FREQ=10 bench_iverilog.v step1.v
  $ vvp a.out
  $ ./run.sh step1.v
  To kill -->  <ctrl><c>
  finish

Commands for Visual Testbench:
1. iverilog -o half_adder_tb.vvp half_adder_tb.v
3. vvp half_adder_tb.vvp
3. gtkwave
