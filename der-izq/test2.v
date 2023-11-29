`include "p_f_module_red.v"

module testbench;

    // Declaración de los Data Types

    // Inputs
    reg [3:0] K;
    reg [3:0] L;

    // Outputs
    wire P;

    // Instanciación de la Unit Under Test (UUT)

    red uut (
        .palabraA(K), // ENTRADAS
        .palabraB(L),
        .Z(P) // SALIDA
    );

    // Aplicación de vectores de prueba.

    initial begin
        K = 5;
        L = 8;
        #100;
        K = 12;
        L = 7;
        #100;
        K = 6;
        L = 6;
        #100;
    end

    initial begin
        $monitor("Las Entradas son: K = %d, L = %d, El resultado de la comparación es: P = %d", K, L, P);
    end

endmodule
