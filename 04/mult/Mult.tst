load Mult.hack,
output-file Mult.out,
compare-to Mult.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

set RAM[0] 0,   // Seta os argumentos de teste 
set RAM[1] 0,
set RAM[2] -1;  // Testa o programa inicializando product com 0
repeat 20 {
  ticktock;
}
set RAM[0] 0,   // Restora argumentos no caso do programa usar eles como contador de loop
set RAM[1] 0,
output;

set PC 0,
set RAM[0] 1,   // Seta os argumentos de teste 
set RAM[1] 0,
set RAM[2] -1;  // assegura que o programa inicializa o produto com 0 
repeat 50 {
  ticktock;
}
set RAM[0] 1,   // Restora argumentos no caso do programa usar eles como contador de loop
set RAM[1] 0,
output;

set PC 0,
set RAM[0] 0,   // Seta os argumentos de teste 
set RAM[1] 2,
set RAM[2] -1;  // assegura que o programa inicializa o produto com 0
repeat 80 {
  ticktock;
}
set RAM[0] 0,   // Restora argumentos no caso do programa usar eles como contador de loop
set RAM[1] 2,
output;

set PC 0,
set RAM[0] 3,   // Seta os argumentos de teste 
set RAM[1] 1,
set RAM[2] -1;  // assegura que o programa inicializa o produto com 0
repeat 120 {
  ticktock;
}
set RAM[0] 3,   // Restora argumentos no caso do programa usar eles como contador de loop
set RAM[1] 1,
output;

set PC 0,
set RAM[0] 2,   // Seta os argumentos de teste 
set RAM[1] 4,
set RAM[2] -1;  // assegura que o programa inicializa o produto com 0
repeat 150 {
  ticktock;
}
set RAM[0] 2,   // Restora argumentos no caso do programa usar eles como contador de loop
set RAM[1] 4,
output;

set PC 0,
set RAM[0] 6,   // Seta os argumentos de teste 
set RAM[1] 7,
set RAM[2] -1;  // assegura que o programa inicializa o produto com 0
repeat 210 {
  ticktock;
}
set RAM[0] 6,   // Restora argumentos no caso do programa usar eles como contador de loop
set RAM[1] 7,
output;
