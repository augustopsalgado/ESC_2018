// Roda um loop infinito que recebe os dados do teclado
// quando a alguma tecla e pressionada o programa escurece a tela,
// em cada tecla escrita quando nenhuma e pressionada 
// o programa limpa a tela, e escreve branco em cada pixel.

// Put your code here.

  (START)
    // existem 8192 registradores cuidando da tela
    // inicializa numScreenRegistersToPaint to 8192
    @8192
    D=A
    @numScreenRegistersToPaint
    M=D

    // Seta o valor da variável  currentScreenRegister  para o primeiro registro da tela
    @SCREEN
    D=A
    @currentScreenRegister
    M=D

    // Seta D para o valor do teclado. 0=> sem pressionar // 1=> pressionada
    @KBD
    D=M

    // If nao e pressionada => seta a cor para branco
    @SETWHITE
    D; JEQ

    // If pressionada => seta a cor para preto
    @SETBLACK
    0; JMP

  // Seta a var color para 0
  (SETWHITE)
    @color
    M=0

    @PAINT
    0;JMP

  // Seta a var color para -1
  (SETBLACK)
    @color
    M=-1

    @PAINT
    0;JMP

  // Pinta a tela
  (PAINT)
    // Seta D para o valor da cor
    @color
    D=M

    // Seta o valor de A para a tela registra  o numero e modifica esse valor
    // para ter esse valor de cor (0 branco; -1 preto)
    @currentScreenRegister
    A=M
    M=D

    // Adiciona um para currentScreenRegister (para pintar os pixels certos no proximo  
    // loop)
    @currentScreenRegister
    M=M+1

    // subtrai 1 para numScreenRegistersToPaint
    @numScreenRegistersToPaint
    M=M-1
    D=M

    // if numScreenRegistersToPaint is 0 => vai para o inicio do programa
    @START
    D; JEQ

    // if numScreenRegistersToPaint is not 0, continua pintando
    @PAINT
    0; JMP

