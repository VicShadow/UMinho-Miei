

// Mapa Drone
/*
I __ __ __ 1 __ __ __ 6 __ __ __ __ 9 __ __
|          |          |             |      |
|          |          |          __ | __   |
|    __ __ | __       |         |   10  |  |
|   |      2   |      |         |       |  |
|   |          |      |         |__ 11__|  |
|   |__ 3 __ __|      |             |      |
|       |             |             |      |
| __ __ | __ __ __ __ | __ __ __ __ | __ __|
        4             7             12      F
        
*/





//Minimização da soma dos caminhos extra escolhidos.
min: custoExtraArestas + custoExtraLinhas;


//Somatório do caminho extra percorrido pelas arestas.
custoExtraArestas = 3 arestaI_1 + 10 arestaI_4 + 3 aresta1_6 + 3 aresta1_2 + 4 aresta6_9 + 8 aresta6_7 +
                2 aresta9_10 + 10 aresta9_F + 6 aresta2_3esq + 6 aresta2_3dir + 5 aresta10_11esq + 
                5 aresta10_11dir + 2 aresta3_4 + 3 aresta11_12 + 4 aresta4_7 + 4 aresta7_12 + 2 aresta12_F;

//Somatório do caminho extra percorrido pelas linhas.
custoExtraLinhas = 3 linhaI_1 + 6 linhaI_6 + 10 linhaI_9 + 4.24 linhaI_2 + 10.2 linhaI_10 + 6.32 linhaI_3 + 11.18 linhaI_11 + 
        8.25 linhaI_4 + 10 linhaI_7 + 12.81 linhaI_12 + 14.42 linhaI_F + 3 linha1_6 + 7 linha1_9 + 3 linha1_2 + 7.28 linha1_10 + 
        6.08 linha1_3 + 8.6 linha1_11 + 8.06 linha1_4 + 8.54 linha1_7 + 10.63 linha1_12 + 12.04 linha1_F + 4 linha6_9 + 4.24 linha6_2 + 
        4.47 linha6_10 + 7.21 linha6_3 + 6.4 linha6_11 + 8.94 linha6_4 + 8 linha6_7 + 8.94 linha6_12 + 10 linha6_F + 7.62 linha9_2 + 
        2 linha9_10 + 10 linha9_3 + 5 linha9_11 + 11.31 linha9_4 + 8.94 linha9_7 + 8 linha9_12 + 8.25 linha9_F + 7.07 linha2_10 + 
        3.16 linha2_3 + 7.28 linha2_11 + 5.1 linha2_4 + 5.83 linha2_7 + 8.6 linha2_12 + 10.3 linha2_F + 8.94 linha10_3 + 3 linha10_11 + 
        10 linha10_4 + 7.21 linha10_7 + 6 linha10_12 + 6.32 linha10_F + 8.06 linha3_11 + 2 linha3_4 + 4.47 linha3_7 + 
        8.25 linha3_12 + 10.2 linha3_F + 8.54 linha11_4 + 5 linha11_7 + 3 linha11_12 + 3.61 linha11_F + 4 linha4_7 + 
        8 linha4_12 + 10 linha4_F + 4 linha7_12 + 6 linha7_F + 2 linha12_F;



//Definição dos NODOS - Junção de todos os caminhos que percorrem um nodo.
//Exemplo - NodoI - Todos as arestas e linhas que passam no nodo I.
nodoI = arestaI_1 + arestaI_4 + linhaI_1 + linhaI_6 + linhaI_9 + linhaI_2 + linhaI_10 + 
        linhaI_3 + linhaI_11 + linhaI_4 + linhaI_7 + linhaI_12 + linhaI_F;

nodo1 = aresta1_6 + aresta1_2 + linha1_6 + linha1_9 + linha1_2 + linha1_10 + linha1_3 + 
        linha1_11 + linha1_4 + linha1_7 + linha1_12 + linha1_F + arestaI_1 + linhaI_1;

nodo6 = aresta6_9 + aresta6_7 + linha6_9 + linha6_2 + linha6_10 + linha6_3 + linha6_11 + 
        linha6_4 + linha6_7 + linha6_12 + linha6_F + aresta1_6 + linha1_6 + linhaI_6;

nodo9 = aresta9_10 + aresta9_F + linha9_2 + linha9_10 + linha9_3 + linha9_11 + linha9_4 + 
        linha9_7 + linha9_12 + linha9_F + aresta6_9 + linha6_9 + linha1_9 + linhaI_9;

nodo2 = aresta2_3esq + aresta2_3dir + linha2_10 + linha2_3 + linha2_11 + linha2_4 + linha2_7 + 
        linha2_12 + linha2_F + aresta1_2 + linha9_2 + linha6_2 + linha1_2 + linhaI_2;

nodo10 = aresta10_11esq + aresta10_11dir + linha10_3 + linha10_11 + linha10_4 + linha10_7 +
        linha10_12 + linha10_F + aresta9_10 + linha2_10 + linha9_10 + linha6_10 + linha1_10 + linhaI_10;

nodo3 = aresta3_4 + linha3_11 + linha3_4 + linha3_7 + linha3_12 + linha3_F + aresta2_3esq + 
        aresta2_3dir + linha10_3 + linha2_3 + linha9_3 + linha6_3 + linha1_3 + linhaI_3;

nodo11 = aresta11_12 + linha11_4 + linha11_7 + linha11_12 + linha11_F + aresta10_11esq + aresta10_11dir + 
        linha3_11 + linha10_11 + linha2_11 + linha9_11 + linha6_11 + linha1_11 + linhaI_11;

nodo4 = aresta4_7 + linha4_7 + linha4_12 + linha4_F + aresta3_4 + arestaI_4 + linha11_4 + 
        linha3_4 + linha10_4 + linha2_4 + linha9_4 + linha6_4 + linha1_4 + linhaI_4;

nodo7 = aresta7_12 + linha7_12 + linha7_F + aresta4_7 + linha4_7 + linha11_7 + linha3_7 +
        linha10_7 + linha2_7 + linha9_7 + linha6_7 + linha1_7 + linhaI_7;

nodo12 = aresta12_F + linha12_F + aresta7_12 + linha7_12 + linha4_12 + linha11_12 + linha3_12 +
        linha10_12 + linha2_12 + linha9_12 + linha6_12 + linha1_12 + linhaI_12;

nodoF = aresta12_F + aresta9_F + linha12_F + linha7_F + linha4_F + linha11_F + linha3_F +
        linha10_F + linha2_F + linha9_F + linha6_F + linha1_F + linhaI_F;




//Teste de imparidade - a soma de todos os caminhos que atravessam um nodo tem que
//ser ímpar e maior ou igual a 1.
nodoI = 2 kI + 1; nodoF = 2 kF + 1;nodo1 = 2 k1 + 1;nodo2 = 2 k2 + 1;nodo3 = 2 k3 + 1;
nodo4 = 2 k4 + 1;nodo6 = 2 k6 + 1;nodo7 = 2 k7 + 1;nodo9 = 2 k9 + 1;nodo10 = 2 k10 + 1;
nodo11 = 2 k11 + 1;nodo12 = 2 k12 + 1;
kI >= 0;kF >= 0;k1 >= 0;k2 >= 0;k3 >= 0;k4 >= 0;k6 >= 0;
k7 >= 0;k9 >= 0;k10 >= 0;k11 >= 0;k12 >= 0;
int kI,kF,k1,k2,k3,k4,k6,k7,k9,k10,k11,k12;


//Todos as variáveis de decisão (caminhos escolhidos) são valores inteiros, visto que não há "meios" caminhos
int arestaI_1,arestaI_4,linhaI_1,linhaI_6,linhaI_9,linhaI_2,linhaI_10,linhaI_3,linhaI_11;
int linhaI_4,linhaI_7,linhaI_12,linhaI_F,aresta1_6,aresta1_2,linha1_6,linha1_9,linha1_2;
int linha1_10,linha1_3,linha1_11,inha1_4,linha1_7,linha1_12,linha1_F,aresta6_9,aresta6_7;
int linha6_9,linha6_2,linha6_10,linha6_3,linha6_11,linha6_4,linha6_7,linha6_12,linha6_F;
int aresta9_10,aresta9_F,linha9_2,linha9_10,linha9_3,linha9_11,linha9_4,linha9_7,linha9_12;
int linha9_F,aresta2_3esq,aresta2_3dir,linha2_10,linha2_3,linha2_11,linha2_4,linha2_7;
int linha2_12,linha2_F,aresta10_11esq,aresta10_11dir,linha10_3,linha10_11,linha10_4,linha10_7;
int linha10_12,linha10_F,aresta3_4,linha3_11,linha3_4,linha3_7,linha3_12,linha3_F,aresta11_12;
int linha11_4,linha11_7,linha11_12,linha11_F,aresta4_7,linha4_7,linha4_12,linha4_F,aresta7_12;
int linha7_12,linha7_F,aresta12_F,linha12_F;