module Celda_inicial_d_i (

    input a_p, //entrada A
    input b_p, //entrada B
    output p_x // salida, resultado de la logica combinacional del modulo
);

  wire C1; //conecta la salida de not N1 a una de las entrada de and A1

    // Negar A
    not N1 (C1, a_p);

    //  ~A & B
    and A1 (p_x, b_p, C1);

endmodule
