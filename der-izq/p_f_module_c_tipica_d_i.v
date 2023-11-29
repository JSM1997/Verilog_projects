module Celda_tipica_d_i (

    input wire a_p, //entrada A
    input wire b_p, //entrada B,
    input wire x_p, //entrada x, representa el estado inicial definido
    output wire p_x //salida, resultado de la logica combinacional del modulo
);

wire c1; //salida de N1
wire c2; //salida de A1
wire c3; //salida de A2
wire c4; //salida de A3
wire c5; //salida de O5

    // Negar A
    not N1 (c1, a_p);

    //  ~A & X
    and A1 (c2, x_p, c1);

    //  x & B
    and A2 (c3, b_p, x_p);

    //  ~A & B
    and A3 (c4, c1, b_p);

    // Sumar los resultados anteriores
    or O5 (c5, c2, c3);
    or O6 (p_x, c4, c5);

endmodule
