void main(){
  //Entrando
  double roupa = 5.76;
  double blusa = 12.54;
  double sapato = 15.32;
  double cueca = 3.76;
  double meia = 1.53;
  double pagamento = 50;

  //Processamento
  double total = roupa + blusa + sapato + cueca + meia;
  double res = pagamento - total;

  //Convertendo o valor real em duas casas após a virgula
  String troco = res.toStringAsFixed(2);

  //Saída
  print("O valor total da compra é: $total e o troco é $troco");
  
}