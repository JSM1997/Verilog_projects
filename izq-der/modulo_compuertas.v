//compuerta AND
module AND(
					 input wire a,
					 input wire b,
					 output wire a_y_b
					 );

	and U1 (a_y_b, a, b);

endmodule

//compuerta OR
module OR(
					 input wire a,
					 input wire b,
					 output wire a_o_b
					 );

	or U2 (a_o_b, a, b);

endmodule

//Entrada negada por entrada no negada
module Multiplicador(
    input wire a,
    input wire b,
    output wire producto
);

    wire A_negada;

    //NOT para negar A
    not U1 (.a(a), .b(A_negada));

    // Compuerta AND para multiplicar A negada por B
    and U2 (.a(A_negada), .b(b), .out(producto));

endmodule
