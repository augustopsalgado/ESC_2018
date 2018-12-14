// Multiplica R0 e R1 e armazena o resultado em R2.
// (R0, R1, R2 referem para RAM[0], RAM[1], e RAM[2], respectivamente.)

// Soma R1 com ele mesmo R2 vezes

// Inicializa i com R1
@R1
D=M
@i
M=D

// Inicializa result com 0
@R2
M=0

// o loop vai decrescer de i por 1 e se e maior que 0 
// soma R1 para o resultado se nao iremos para o fim
(LOOP)
// If i is 0 => finaliza o programa
@i
D=M
@END
D;JEQ

// Adiciona R0 para o resultado
@R0
D=M
@R2
M=D+M

// Decresce o valor de i
@i
M=M-1

@LOOP
0; JMP


(END)
@END
0; JMP
