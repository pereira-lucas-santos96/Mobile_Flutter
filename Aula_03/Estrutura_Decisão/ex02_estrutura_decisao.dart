void main(){

  //Entrada
  double peso = 75.87;
  double altura = 1.78;

  //Processamento
  double imc = peso/(altura*altura);
   String res = imc.toStringAsFixed(2);

  //Saída
  if(imc < 19){
    print("Você esta abaixo do peso!!! $res");
  }else if((imc >= 19) || (imc < 24) ){
    print("Você esta no peso ideal!!!  $res");
  }else if(imc >= 24){
    print("Você esta acima do peso!!!  $res");
  }else{
    print("Valor inválido!");
  }
}