module Celda_inicial_d_i (

    input wire a_p, //entrada A, ultimo bit de la palabra A
    input wire b_p, //entrada B, ultimo bit de la palabra B
    input wire x_p, //entrada x, representa el estado inicial definido
    output wire p_x // salida, resultado de la logica combinacional del modulo
);
wire notA; //conecta la salida de not U1 a la entrada and U2

    // Negar A
    not U1 (a_p, notA);

    //  ~A por B
    and U2 (notA, b_p, p_x);

endmodule
