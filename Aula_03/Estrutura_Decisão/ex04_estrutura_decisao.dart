void main(){


//Entrada
String nome = 'Lucas';
double peso = 112.54;
double altura = 1.78;
bool sexo = true;
  

double imc = peso/(altura*altura);
String res = imc.toStringAsFixed(2);

if(sexo == true){
  if(imc < 20){
    print("$nome você esta abaixo do peso, seu imc é $res!");
  }else if(imc >= 20 && imc < 25){
    print("$nome você esta com o peso ideal, seu imc é $res!");
  }else if(imc >= 25){
    print("$nome você esta acima do peso, seu imc é $res!");
  }
}else if(sexo == false){
  if(imc < 19){
    print("$nome você esta abaixo do peso, seu imc é $res!");
  }else if(imc >= 19 && imc < 24){
    print("$nome você esta com o peso ideal, seu imc é $res!");
  }else if(imc >= 24){
    print("$nome você esta acima do peso, seu imc é $res!");
  }
}else{
  print("O valor inserido em sexo está invalido, sexo Femenino com valor F e masculino M");
}
}

