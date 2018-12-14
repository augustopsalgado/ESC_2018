load Computer.hdl,
output-file ComputerAdd-external.out,
compare-to ComputerAdd-external.cmp,
output-list time%S1.4.1 reset%B2.1.2 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// carrega o programa escrito em linguagem de maquina hack.
// o programa adiciona duas contantes 2 e 3 e escreve o resultado na RAM[0]. 
ROM32K load Add.hack,
output;

// Primeira execucao (no comeco PC=0)
repeat 6 {
    tick, tock, output;
}

// Reseta o PC
set reset 1,
set RAM16K[0] 0,
tick, tock, output;


// Segunda execucao, para checar que o PC foi resetado corretamente.
seta reset 0,

repeat 6 {
    tick, tock, output;
}
