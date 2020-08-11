## UFPB- CI
Introdução a Computação Gráfica 2019.4

### Alunos
ALAN HIORES FREIRES DE SALES LEITE - 11228436

KAIO MOURA DOS SANTOS - 11506860


### Tarefa 01 Rasterização de Pontos e Linhas

O objetivo da atividade é implementar algoritmos para a rasterização de primitivas como pontos e linhas, através da escrita direta na memória, como os sistemas operacionais atuais protegem a memória quanto ao acesso direito, utilizamos um framework fornecido pelo professor para simular este acesso à memória de vídeo.


## Exercício 1 - PutPixel
Foram implementadas 3 funções principais durante a atividade, a primeira se chama PutPixel e consiste em rasterizar um ponto na memória de vídeo, recebendo com parâmetros a posição do píxel na tela (x,y) e sua cor (RGBA). Diferente do sistema de coordenadas cartesiano,no sistemas de computação gráfica a origem parte do píxel superior esquerdo, e a direção positiva do eixo y é para baixo.

<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_01/01_mygl_framework/imagens/52668397-31901400-2ef2-11e9-9e67-d7e18b1d0a31.png>
</p> 


<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_01/01_mygl_framework/imagens/Captura%20de%20tela%20de%202020-08-11%2001-24-49.png>
<p align="center">  Figura 1 - Função PutPixel <p align="center">
</p> 


<p align="center">
  <img src=  >
<p align="center">  Figura 2 - PutPixel <p align="center">
</p> 

## Exercício 2 - DrawLine
Esta função rasteriza uma linha na tela, recebendo como parâmetros dois vértices (inicial e final), o algoritmo implementado para rasterização foi o de Bresenham, que permite determinar quais os pontos numa matriz de base quadriculada que devem ser destacados para atender o grau de inclinação de um ângulo. 



### Algoritmo de Bresenham
O interessante deste algoritmo é que utiliza apenas adição, subtração de inteiros e deslocamento de bits, operações muito simples e baratas em termos de processamento, o algoritmo determina os pontos que serão coloridos a fim de realizar uma aproximação de uma linha reta entre dois pontos.

<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_01/01_mygl_framework/imagens/Captura%20de%20tela%20de%202020-08-11%2001-24-49.png>
<p align="center">  Figura 3 - Função DrawLine<p align="center">
</p> 

<p align="center">
  <img src=  >
<p align="center">  Figura 4 - DrawLine <p align="center">
</p> 

## Exercício 3 - DrawTriangle
Esta função desenha as arestas de um triângulo, recebendo como parâmetro três vértices, essa função consiste em chamar a função DrawLine três vezes, assim formando o desenho do triângulo desejado.



<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_01/01_mygl_framework/imagens/Captura%20de%20tela%20de%202020-08-11%2001-24-49.png>
<p align="center">  Figura 5 - Função DrawTriangle<p align="center">
</p> 

<p align="center">
  <img src=  >
<p align="center">  Figura 6 - DrawTriangle <p align="center">
</p> 
