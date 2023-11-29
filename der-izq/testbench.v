`include "instanciacion.v"
`include "pruebas.v"

module testbench#(parameter N=4);

    input [N:0] palabraA; //entrada palabraA
    input [N:0] palabraB; //entrada palabraB
    wire [N-1:0] x_p; //entrada x, representa el estado inicial definido
    wire Z; //salida, resultado de la logica combinacional del modulo

    //inicio de la generación de archivos VCD
    initial begin
        $dumpfile("salida.vcd"); //creacion del archivo para visualizar los cambios de las señales
        $dumpvars; //se cargan las variables y señales del diseño
    end

    pruebas pruebas_inst ( //instanciacion del modulo tester
        .palabraA(palabraA),
        .palabraB(palabraB)
    );

    red red_inst ( //instanciacion del modulo red
        .a_p(palabraB),
        .b_p(palabraB),
        .x_p({x_p[0], x_p[1], x_p[2], x_p[3]}),
        .Z(Z)
    );

endmodule
