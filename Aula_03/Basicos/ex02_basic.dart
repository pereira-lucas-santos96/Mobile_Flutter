void main(){

  //Entrada: Variavéis 
  double n1 = 6.8;
  double n2 = 8.9;
  double n3 = 9.6;
  double n4 = 7.8;

  //Procesamento 
  double ma = (n1 + n2 + n3 + n4)/4;
 
  //Convertendo o valor real em duas casas após a virgula
  String res = ma.toStringAsFixed(2);
  
  
  //Saída
  print("O resultado da média aritimética é: $res ");
}