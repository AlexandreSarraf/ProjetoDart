main() {
  var notas = [8.2, 7.1, 6.2, 4.4, 3.9, 8.8, 9.1, 5.1];
  var notasBoas = [];

  for (var nota in notas) {
    if (nota >= 7) {
      notasBoas.add(nota);
    }
  }
  print(notasBoas);
  print('-----------');
  /*var melhorNota = notas.elementAt(0);

  for (int cont = 0; cont < notas.length; cont++) {
    if (notas.elementAt(cont) > melhorNota) {
      melhorNota = notas.elementAt(cont);
    }
  }*/

  (print('A melhor nota foi: $melhorNota'));
}
