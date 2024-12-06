main() {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];

  bool Function(double) notasBoasFn = (double nota) => nota >= 7;

  var notasMuitoBoasFn = (double nota) {
    return nota >= 8.8;
  };

  bool Function(double) melhorNotaFn = (double nota) {
    return nota >= 9;
  };

  double melhorNotaFn(List<double> notas) {
    if (notas.isEmpty) return 0.0; // Retorna 0.0 se a lista estiver vazia

    double melhorNota = notas[0];
    for (double nota in notas) {
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
