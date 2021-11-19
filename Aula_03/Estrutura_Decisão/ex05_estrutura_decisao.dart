void main() {
  double v0Inicial;
  double tempo;
  double x;
  double vfinal;

  v0Inicial = 60;
  tempo = 10;
  x = 5;

  vfinal = v0Inicial + (tempo * x);

  print("\nO VALOR DA VELOCIDADE FINAL (V) É = $vfinal m/s.");

  if ((vfinal < 40.01)) {
    print("\nVEÍCULO MUITO LENTO(V = $vfinal m/s).");
  } else if ((vfinal > 40) && (vfinal < 60.01)) {
    print("\nVEÍCULO EM VELOCIDADE PERMITIDA (V = $vfinal m/s).");
  } else if ((vfinal > 60) && (vfinal < 80.01)) {
    print("\nVEÍCULO EM VELOCIDADE DE CRUZEIRO (V = $vfinal m/s).");
  } else if ((vfinal > 80) && (vfinal < 120.01)) {
    print("\nVEÍCULO EM VELOCIDADE RÁPIDA (V = $vfinal m/s).");
  } else {
    print("\nVEÍCULO EM VELOCIDADE MUITO RÁPIDO (V = $vfinal m/s).");
  }
}
