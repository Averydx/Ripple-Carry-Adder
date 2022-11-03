`timescale 1ns / 1ps

module main_sim;
    reg [7:0]sw;
    wire [0:3]led;
    wire RGB_led_A;
    
    main M(sw,led,RGB_led_A);
    
    initial
    begin
     #5 sw = 8'b00000000; 
     #5 sw = 8'b11110101;
     #5 sw = 8'b11001111;
     #5 sw = 8'b11000011; 
     #5 sw = 8'b11001010;  
     
     #10 $finish;
     end

endmodule
