List<E> filtrar<E>(List<E> lista, bool Function(E) fn) {
  List<E> listaFiltrada = [];
  for (E elemento in lista) {
    if (fn(elemento)) {
      listaFiltrada.add(elemento);
    }
  }
  return listaFiltrada;
}

main() {
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3];
  var boasNotasFn = (double nota) => nota >= 7.5;

  //var somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
  //print(somenteNotasBoas);
  print(filtrar(notas, boasNotasFn));

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Gui', 'Joana'];
  var nomesGrandesFn = (String nome) =>
      nome.length >=
      5; /*recebe nome tipo String,
  retorna nome.length maior ou igual a 5*/
  //var nomesGrandes = filtrar<String>(nomes, boasNotasFn);
  //print(nomesGrandes);
  print(filtrar(nomes, nomesGrandesFn));
}
