## UFPB- CI
Introdução a Computação Gráfica 2019.4

### Alunos
ALAN HIORES FREIRES DE SALES LEITE - 11228436

KAIO MOURA DOS SANTOS - 11506860

### Atividade 4 - Implementação de Modelos de Iluminação

O objetivo deste trabalho é familiarizar os alunos com os modelos de iluminação tradicionalmente
utilizados na rasterização: ambiente, difuso e especular (ou Phong). Para isto, os alunos implementarão
os três modelos utilizando o vertex shader do OpenGL.

Após as instalações do programa disponibilizado pelo professor executamos os comandos a seguir: 

````
$ g++ -Wall -Wextra -Wpedantic -std=c++17 -O0 -g3 -DDEBUG main.cpp -lglut -lGLEW -lGLU -lGL -o shading_gl
````
````
$ make
````
````
$./shading_gl

````
Se todas as ferramentas estão instaladas corretamente obtemos a seguinte imagem:


<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_04/imagens/1i.png    >
</p> 


### Exercício 1 - Implementação do Modelo de Reflexão Difuso
Modificar o vertex shader (arquivo vertex_shader.glsl), de forma que ele passe a incluir, além do modelo de iluminação ambiente, também o modelo difuso. Para isto, será necessário calcular o novo valor do vetor normal N, após as transformações feitas pela matriz Model, bem como o vetor L que aponta do vértice para a fonte de luz. 

<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_04/imagens/2c.png   >
</p> 


##### Obtemos o resultado:

<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_04/imagens/2.1i.png >
</p> 

### Exercício 2 - Implementação do Modelo de Reflexão Especular

Modificar o vertex shader (arquivo vertex_shader.glsl) do exercício anterior de forma que ele passe
a incluir, além do modelo de iluminação ambiente e difuso, também o modelo especular, ou de Phong.
Para isto, será necessário calcular o vetor R, de reflexão da luz L, e o vetor da câmera V, que aponta
do vértice em questão para a câmera. 

As modificações também serão realizadas através de alterações no vertex shader. Devemos seguir as seguintes instruçõees: Calcular o vetor R,de reflexão da luz L, calcular o vetor da câmera V que aponta do vértice em questão para a câmera, ajustar o cálculo do modelo de iluminação para o modelo de Phong.
De acordo com o que foi pedido na tarefa, serão adicionados o cálculo do vetor de reflexão R e o vetor da câmera V. Após o cálculo dos vetores, vamoscalcular o modelo de iluminação de reflexão especular, com o valor de n = 64.


<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_04/imagens/3c.png  >

</p> 

##### Obtemos o resultado:

<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_04/imagens/3i.png  >
</p> 

