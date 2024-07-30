/* Test bench for step_1.v 
saved in file step_1_tb.v */
`include "step_1.v"
module step_1_tb();
    reg CLK;
    wire RESET = 0;
    wire [4:0] LEDS;
    reg RXD = 1'b0;
    wire TXD;

    SOC uut( CLK , RESET, LEDS, RXD, TXD);

    integer count;
    initial begin
        $dumpfile("step_1_tb.vcd");
        $dumpvars(0,uut);
        CLK = 0;
        count = 0;
        end
    
    always begin
        #1;
        if ( count < 20) begin
        CLK = ~CLK;
        count = count + 1 ;
        end
    end

    initial begin
    #30;
    $finish;
    end

endmodule