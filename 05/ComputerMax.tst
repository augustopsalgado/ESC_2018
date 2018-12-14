load Computer.hdl,
output-file ComputerMax.out,
compare-to ComputerMax.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[]%D1.7.1 DRegister[]%D1.7.1 PC[]%D0.4.0 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// carrega o programa escrito na linguagem de maquina Hack.
// o programa computa o maximo de RAM[0] e RAM[1] 
// e escreve o resultado na RAM[2].

ROM32K load Max.hack,

// primeira execucao: compute max(3,5)
set RAM16K[0] 3,
set RAM16K[1] 5,
output;

repeat 14 {
    tick, tock, output;
}

// reset the PC
set reset 1,
tick, tock, output;

// segunda execucao: compute max(23456,12345)
set reset 0,
set RAM16K[0] 23456,
set RAM16K[1] 12345,
output;

// a execucao para essas entradas necessitam de menos ciclos
repeat 10 {
    tick, tock, output;
}
