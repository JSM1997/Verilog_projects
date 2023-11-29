module Celda_inicial_d_i (

    input wire a_p, //entrada A, ultimo bit de la palabra A
    input wire b_p, //entrada B, ultimo bit de la palabra B
    output wire p_x // salida, resultado de la logica combinacional del modulo
);

  wire C1; //conecta la salida de not N1 a la entrada and A1

    // Negar A
    not N1 (C1, a_p);

    //  ~A por B
    and A1 (p_x, b_p, C1);

endmodule
