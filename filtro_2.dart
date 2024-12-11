main() {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  var notasBoasFn = (double nota) => nota >= 7;

  var notasMuitoBoasFn = (double nota) {
    return nota >= 8.8;
  };

  double melhorNotaFn(List<double> notasPr) {
    if (notasPr.isEmpty) return 0.0; // Retorna 0.0 se a lista estiver vazia

    double melhorNota = notasPr[0];
    for (double nota in notasPr) {
      if (nota > melhorNota) {
        melhorNota = nota;
      }
    }
    return melhorNota;
  }

  var notasBoas = notas.where(notasBoasFn);
  var notasMuitoBoas = notas.where(notasMuitoBoasFn);
  var melhorNota = melhorNotaFn(notas);

  print(notas);
  print(notasBoas);
  print(notasMuitoBoas);
  print(melhorNota);
}
