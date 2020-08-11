## UFPB- CI
Introdução a Computação Gráfica 2019.4

### Alunos
ALAN HIORES FREIRES DE SALES LEITE - 11228436

KAIO MOURA DOS SANTOS - 11506860

## Pipeline Gráfico
Esta atividade tem como objetivo de se habituar com a estrutura do pipeline gráfico através da implementação das transformações geométricas que o compõem. Esta implementação será feita com auxı́lio da biblioteca glm e sua execução ocorrerá nos shaders do OpenGL.

### Exercício 1 - ESCALA
A Transformação de Escala altera as proporções do objeto, podendo ser Isotrópica, onde não há alteração do aspecto do objeto (a escala para todas as coordenadas do objeto é igual), ou Anisotrópica, onde a escala para pelo menos uma das coordenadas é diferente.


<p align="center">
  <img src=   https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/Escala1.png   >
</p> 

Modificamos a matriz Model para mudar a escala dos triângulos.A matriz Model transforma pontos no espaço do objeto para o espaço do universo. A Matriz Model é o produto de todas as matrizes de transformação do objeto. Os valores de (Sx,Sy,Sz) utilizados foram (0.3,1.5,1). 
</p> Abaixo temos o resultado obtido: </p> 


<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/escala_codigo.png>
<p align="center">  Figura 1 - Código Matriz Model  após a escala <p align="center">
</p>    


<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/escala.png    >
<p align="center">      Figura 2 - Resultado exercício de escala. <p align="center">
</p>

### EXERCÍCIO 2 - TRANSLAÇÃO
A matriz de translação vai transladar os pontos que forem transformados pela matriz:

<p align="center">
  <img src= https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/translacao1.png >
</p>

Onde dx é o deslocamento (translação) no eixo X, dy é o deslocamento em Y e dz é o deslocamento em Z. Os valores de (dx,dy,dz) utilizados foram (1,0,0). 
</p> Abaixo temos o resultado obtido: </p> 

<p align="center">
  <img src=   https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/translacao_codigo.png   >
<p align="center">      Figura 3 - Código matriz Model após translação   <p align="center">
</p> 

<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/translacao.png  >
<p align="center"> Figura 4 - Resultado do exercício de translação.  <p align="center">
</p> 

### EXERCÍCIO 3 - PROJEÇÃO PERSPECTIVA
Resumidamente, para criar distorção de perspectiva colocamos um View Plane a uma certa distância do centro de projeção da câmera. Chamaremos essa distância de variável d. Quanto menor esta variável d maiores os objetos mais próximos do View Plane e menores os mais longes.


<p align="center">
  <img src=   https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/projecao_perspectiva.png
   >
</p> 

Para chegar ao resultado desejado a modificação foi realizada na matriz Projection, foi utilizado d = 0.5.
</p> Abaixo temos o resultado obtido:</p> 

<p align="center">
  <img src=   https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/projecao_codigo.png   >
<p align="center">      Figura 5 - Código matriz Projection após translação.   <p align="center">
</p> 

<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/projecao.png     >
<p align="center">      Figura 6 - Resultado do exercício de projeção perspectiva. <p align="center">
</p> 

## EXERCÍCIO 4 - POSIÇÃO DA CÂMERA
Os Vetores bases criados, em seguida criamos uma matriz B da base da câmera que foi invertida, e o valor de sua transposta foi calculado. Depois uma matriz T foi criada para transladar a base da câmera, com isso a origem se equipara com a origem do espaço do universo. Para obter a nova matriz View devemos fazer a multiplicação da matriz B transposta com a T.
</p> Abaixo temos o resultado obtido:</p> 


<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/posicao_camera_codigo.png    >
<p align="center">      Figura 7 - Código matriz View após a alteração.   <p align="center">
</p> 

<p align="center">
  <img src=  https://github.com/kaio07/Computacao_Grafica/blob/master/Tarefa_03/Imagens/posicao_camera.png    >
<p align="center">      Figura 8 -  Resultado do exercício de mudança de posição da câmera.  <p align="center">
</p> 


