load Computer.hdl,
output-file ComputerRect.out,
compare-to ComputerRect.cmp,
output-list time%S1.4.1 ARegister[]%D1.7.1 DRegister[]%D1.7.1 PC[]%D0.4.0 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// O programa desenha um retangulo de width 16 pixels e 
// length RAM[0] no topo da tela.
ROM32K load Rect.hack,

echo "Antes de executar esse script, selecione a opcao de tela pelo o 'View' menu";

echo "um pequeno retangulo deve ser desenhado no topo esquerdo da tela a opcao de 'view' deve estar selecionada.)";

// desenha um retangulo de 16 pixels de largura e 4 pixels de altura
set RAM16K[0] 4,
output;

repeat 63 {
    tick, tock, output;
}
