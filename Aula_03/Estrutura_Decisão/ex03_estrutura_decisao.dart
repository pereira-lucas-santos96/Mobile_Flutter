void main(){

  //Entrada
  double n1 = 5;
  double n2 = 6;
  double n3 = 7;

  

  //Saída
  if(((n1 + n2) > n3) && ((n2 + n3) > n1) && ((n1 + n3) > n2)){
      if(((n1 == n2) && (n2 != n3)) || 
         ((n2 == n3) && (n3 != n1)) ||
         ((n1 == n3) && (n3 != n2))){
        print("Triângulo Isósceles!!");     
      }else if((n1 == n2) && (n2 == n3)){
        print("Triângulo Equilátero!!"); 
       }else if((n1 != n2) && (n2 != n3)){
        print("Triângulo Escaleno!!");  
      }
  }else{
    print("Não é um triângulo!!");
  }  
  
}  
    