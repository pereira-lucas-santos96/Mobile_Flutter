void main(){
  //variavél
  double celsius = 89;

  //calculando
  double fahrenheit = 32 + (celsius * 1.8);
  
  //Convertendo o valor real em uma casa após a virgula
  String temp = fahrenheit.toStringAsFixed(1);

  //saída
  print("40° celsius é equivalente á $temp em fahrenheit!");
}