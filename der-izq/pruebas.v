module pruebas#(parameter N=4)(
  output reg [N:0] palabraA, //palabra A, la cual es una salida tipo reg de 4 bit
  output reg [N:0] palabraB //palabra B, la cual es una salida tipo reg de 4 bit
);

initial //Se inicializan los casos
begin

// Caso de prueba 1
palabraA = 4'b1101;
palabraB = 4'b1010;
#100; //Se ejecuta la simulación durante 100 unidades de tiempo (100ns)

// Caso de prueba 2
palabraA = 4'b1101;
palabraB = 4'b0100;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 3
palabraA = 4'b0101;
palabraB = 4'b0001;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 4
palabraA = 4'b1111;
palabraB = 4'b0111;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 5
palabraA = 4'b0111;
palabraB = 4'b1011;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 6
palabraA = 4'b1111;
palabraB = 4'b0111;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 7
palabraA = 4'b1011;
palabraB = 4'b0111;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 8
palabraA = 4'b1111;
palabraB = 4'b0111;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 9
palabraA = 4'b0111;
palabraB = 4'b1011;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


// Caso de prueba 10
palabraA = 4'b1111;
palabraB = 4'b0111;
#100; // Se ejecuta la simulación durante 100 unidades de tiempo (100ns)


#1000 $finish; // Se finaliza la simulación después de un tiempo total
end

endmodule
