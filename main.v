`timescale 1ns / 1ps


module main(
    input [7:0]sw,
    output [3:0]led,
    output RGB_led_A
    );
    wire c0,c1,c2;
    halfadder h1 (sw[4],sw[0],led[0],c0);
    fulladder f1(sw[5],sw[1],c0,c1,led[1]);
    fulladder f2 (sw[6],sw[2],c1,c2,led[2]);
    fulladder f3 (sw[7],sw[3],c2,RGB_led_A,led[3]);
    
    
    
endmodule
