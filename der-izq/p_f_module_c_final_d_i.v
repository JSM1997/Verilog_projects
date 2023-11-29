module Celda_final_d_i (

    input wire a_p, // Entrada A, último bit de la palabra A
    input wire b_p, // Entrada B, último bit de la palabra B
    input wire x_p, // Entrada x, representa el estado inicial definido
    output wire p_x // Salida, resultado de la lógica combinacional del módulo
);

    wire c1; // Salida de N1
    wire c2; // Salida de N2
    wire c3; // Salida de A1
    wire c4; // Salida de A2
    wire c5; // Salida de A3
    wire c6; // Salida de O1

    // Negar A
    not N1 (c1, a_p);

    //  ~A con X
    and A1 (c2, x_p, c1);

    //  x con B
    and A2 (c3, b_p, x_p);

    //  ~A con B
    and A3 (c4, c1, b_p);

    // Sumar
    or O5 (c5, c2, c3);
    or O6 (c6, c4, c5);

    // negar la salida final
    not N2 (p_x, c6);

endmodule
