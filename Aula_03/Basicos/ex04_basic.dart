void main(){
  //Entrada
  double dolar = 1800;
  double real = 5.34;

  //processamento
  double converter = dolar * real;

  //Convertendo o valor real em duas casas após a virgula
  String rs = converter.toStringAsFixed(2);

  //Saída
  print("O valor em Real é: R\$ $rs ");

}