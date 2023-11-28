module Celda_inicial_i_d(

/*Celda inicial no tiene entradas de estado presente(son evaluadas), tiene entradas primarias, y salidas de proximo estado*/
    input wire a_p,
    input wire b_p,
    output wire p_x,
    output wire p_y
);
    assign p_x = b_p;
    assign p_y = a_p||b_p;

endmodule
