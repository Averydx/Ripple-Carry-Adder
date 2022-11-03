`timescale 1ns / 1ps

module testbench;

    reg [7:0] sw = 0;
    wire [0:3]led;
    wire RGB_led_A;
    
    //Unit under test
    top uut(
    .sw(sw),
    .led(led),
    .RGB_led_A(RGB_led_A)
    );
    
    initial 
    begin
        sw = 0; 
        #10 sw = 8'b11111010; 
        #10 $finish;
    
    end

endmodule
