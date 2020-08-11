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
  <img src=     >
<p align="center">  <p align="center">
</p> 
### Exercício 1 - Implementação do Modelo de Reflexão Difuso
Modificar o vertex shader (arquivo vertex_shader.glsl), de forma que ele passe a incluir, além do modelo de iluminação ambiente, também o modelo difuso. Para isto, será necessário calcular o novo valor do vetor normal N, após as transformações feitas pela matriz Model, bem como o vetor L que aponta do vértice para a fonte de luz. 


### Exercício 2 - Implementação do Modelo de Reflexão Especular

Modificar o vertex shader (arquivo vertex_shader.glsl) do exercício anterior de forma que ele passe
a incluir, além do modelo de iluminação ambiente e difuso, também o modelo especular, ou de Phong.
Para isto, será necessário calcular o vetor R, de reflexão da luz L, e o vetor da câmera V, que aponta
do vértice em questão para a câmera. Abaixo seguem as sugestões de cálculo destes dois vetores:
