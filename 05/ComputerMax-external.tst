load Computer.hdl,
output-file ComputerMax-external.out,
compare-to ComputerMax-external.cmp,
output-list time%S1.4.1 reset%B2.1.2 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// carrega um programa escreito na linguagem hack.
// O programa computa o maximumo de RAM[0] e RAM[1] 
// escreve o resultado na RAM[2].
ROM32K load Max.hack,

// primeira execucao: computa max(3,5)
set RAM16K[0] 3,
set RAM16K[1] 5,
output;

repeat 14 {
    tick, tock, output;
}

// reseta o PC
set reset 1,
tick, tock, output;

// segunda execucao: computa max(23456,12345)
set reset 0,
set RAM16K[0] 23456,
set RAM16K[1] 12345,
output;

// A execucao dessas entradas necessita de menos ciclos
repeat 10 {
    tick, tock, output;
}
