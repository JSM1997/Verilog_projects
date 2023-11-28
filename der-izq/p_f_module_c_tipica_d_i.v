module Celda_tipica_d_i (

    input wire a_p, //entrada A, ultimo bit de la palabra A
    input wire b_p, //entrada B, ultimo bit de la palabra B
    input wire x_p, //entrada x, representa el estado inicial definido
    output wire p_x //salida, resultado de la logica combinacional del modulo
);

wire c1; //salida de N1
wire c2; //salida de A1
wire c3; //salida de A2
wire c4; //salida de A3
wire c5; //salida de U5
wire c6; //salida de U6


//Ecuacion celda tipica ~A&B | x&B | x&~A

    // Negar A
    not N1 (a_p, c1);

    //  ~A con X
    and A1 (c1, x_p, c2);

    //  x con B
    and U3 (b_p, x_p, c3);

    //  ~A con B
    and A3 (C1, b_p, c4);

    // Sumar
    or O5 (c2, c3, c5);
    or O6 (c4, c5, c6);

endmodule
