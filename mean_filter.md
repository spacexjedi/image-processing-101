No exercício 8:  
* Considerando o pixel central como sendo o de posição f(3,2), que é o pixel com intensidade 0 
* Em filtro linear no processo de correlação é necessário multiplicar cada valor da máscara pelo pixel central e seus vizinhos.  

* Sendo uma filtro de média aritmética de tamanho 3x3, o peso de cada valor da máscara é 1/9  
* g(x,y) é a imagem de saída  
g(3,2) = 1/9*f(2,1) + 1/9*f(2,2) + 1/9*f(2,3) + 1/9*f(3,1) + 1/9*f(3,2) + 1/9*f(3,3) + 1/9*f(4,1) + 1/9*f(4,2) + 1/9*f(4,3)  
g(3,2)= 1/9*3 + 1/9*5 + 1/9*5 + 1/9*5 + 1/9*0 + 1/9*1 + 1/9*7 + 1/9*7 + 1/9*2 = (3+5+5+5+0+1+7+7+2)/9 = 35/9 = 3,8888.....que é aproximadamente 4  
g(3,2) =   

É necessário repetir esse processo centrando a máscara em todos os pixels.   
Tomando o cuidado de tomar uma das três abordagens possíveis para tratar o problema da borda.  
Lembre-se também de nunca editar a imagem de entrada.  
