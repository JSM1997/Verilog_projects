module Celda_final_d_i (

    input wire a_p, // Entrada A, último bit de la palabra A
    input wire b_p, // Entrada B, último bit de la palabra B
    input wire x_p, // Entrada x, representa el estado inicial definido
    output wire p_x // Salida, resultado de la lógica combinacional del módulo
);

    wire c1; // Conecta la salida de not U1 a la entrada and U2
    wire c2; // Salida de U2
    wire c3; // Salida de U3
    wire c4; // Salida de U4
    wire c5; // Salida de U5
    wire c6; // Salida de U6

    // Negar A
    not U1 (a_p, c1);

    // ~A con B
    and U2 (c1, b_p, c2);

    // x con ~A
    and U3 (x_p, c1, c3);

    // x con B
    and U4 (x_p, b_p, c4);

    // Sumar
    or U5 (c2, c3, c5);
    or U6 (c4, c5, p_x);

endmodule
