
#  Atividade Prática 4 - Implementação de Modelos de Iluminação

### S. SILVA 2016022764 & G. ALCANTRA 20160110279


### Exercício 1: Implementação do Modelo de Reflexão Difuso

Este exercício se baseia na alteração do arquivo vertex_shader.glsl de maneira que,  sejam adicionados os modelos de reflexão difuso e especular. 
Para isso, após as transformações feitas pela matriz Model foram recalculados o Vetor normal N e o Vetor L. 

Abaixo a especificação dos vetores seguindo as orientações da atividade:

![](imagens/11.jpg)

Após o cálculo dos vetores, resta apenas calcular o modelo de iluminação difuso:

![](imagens/12.jpg)


## Resultados e execução 1

Gif com a execução do codigo( aguarde o carregamento) 

![](imagens/1.gif)


Imagem resultante

![](imagens/1.jpg)



### Exercício 02: Implementação do Modelo de Reflexão Especular

Seguindo o fluxo de trabalho, agora iremos adicionar o modelo  modelo especular ( ou de Phong) de iluminação ao objeto gerado no item anterior, (que já possui os modelos de iluminação ambiente e difuso) 

As modificações também serão realizadas através de alterações no vertex shader. Devem ser seguidas as instruções abaixo:

   - Calcular o vetor R,de reflexão da luz L;
   - Calcular o vetor da câmera V, que aponta do vértice em questão para a câmera;
   - Ajustar o cálculo do modelo de iluminação para o modelo de Phong.
   
   
   
 Conforme especificado na atividade , serão adicionados o  cálculo do vetor de reflexão R e o vetor da câmera V.
 Após o cálculo dos vetores, resta apenas calcular o modelo de iluminação de reflexão especular, com o valor de n = 64.
 
 Abaixo as linhas adicionadas para cumprimento da atividade proposta:
 
 ![](imagens/21.jpg)

 ## Resultados e execução 2

Gif com a execução do codigo( aguarde o carregamento) 

![](imagens/2.gif)


Imagem resultante

![](imagens/2.jpg)


### Problemas encontrados

  Não houveram problemas significativos na execução da atividade

### Referencias:

 - Arquivo de definiçao disponibilizado na atividade
