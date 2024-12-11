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
  var notas = [8.2, 7.3, 6.8, 5.4, 2.7, 9.3, 10];
  var boasNotasFn = (num nota) => nota >= 7.5;

  //var somenteNotasBoas = filtrar<double>(notas, boasNotasFn);
  //print(somenteNotasBoas);

  print(filtrar<num>(notas, boasNotasFn));

  var nomes = ['Ana', 'Bia', 'Rebeca', 'Guilherme', 'Joana'];
  var nomesGrandesFn = (String nome) {
    return nome.length >= 5;
  }; /*recebe nome tipo String, retorna nome.length maior ou igual a 5*/

  var nomesGrandes = filtrar<String>(nomes, boasNotasFn);
  //print(filtrar(nomes, nomesGrandesFn));

  print(nomesGrandes);
}
