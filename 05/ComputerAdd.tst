load Computer.hdl,
output-file ComputerAdd.out,
compare-to ComputerAdd.cmp,
output-list time%S1.4.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 PC[]%D0.4.0 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// carrega o programa escrito na linguagem de maquina hack.
// o programa adiciona duas contantes e 3 e escreve no resultado na RAM[0]. ROM32K load Add.hack,
output;

// primeira execucao (no inicio o PC=0)
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
