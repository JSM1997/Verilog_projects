module Celda_tipica_d_i (

    input wire a_p, //entrada A, ultimo bit de la palabra A
    input wire b_p, //entrada B, ultimo bit de la palabra B
    input wire x_p, //entrada x, representa el estado inicial definido
    output wire p_x //salida, resultado de la logica combinacional del modulo
);

wire c1; //conecta la salida de not U1 a la entrada and U2
wire c2; //salida de U2
wire c3; //salida de U3
wire c4; //salida de U4
wire c5; //salida de U5
wire c6; //salida de U6


//Ecuacion celda tipica ~A&B | x&B | x&~A

    // Negar A
    not U1 (a_p, c1);

    //  ~A con B
    and U2 (c1, b_p, c2);

    //  x con ~A
    and U3 (c1, x_p, c3);

    //  x con B
    and U4 (x_p, b_p, c4);

    // Sumar
    or U5 (c2, c3, c5);
    or U6 (c4, c5, c6);

endmodule
