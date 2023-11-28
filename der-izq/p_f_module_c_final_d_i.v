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

    // Negar x
    not N1 (x_p, c1);

    // Negar B
    not N2 (b_p, c2);

    // ~x con ~B
    and A1 (c2, c1, c3);

    // ~x con A
    and A2 (c2, a_p, c4);

    // ~B con A
    and A3 (c1, a_p, c5);

    // Sumar
    or O1 (c3, c4, c6);
    or O2 (c5, c6, p_x);

endmodule
