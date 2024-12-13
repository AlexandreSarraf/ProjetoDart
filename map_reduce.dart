main() {
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  //String Function(Map) pegarApenasONome = (aluno) => aluno['nome'];
  String pegarApenasONome(Map aluno) {
    return aluno['nome'];
  }

  var nomes = alunos.map(pegarApenasONome);

  int qtdeDeLetras(String texto) {
    return texto.length;
  }

  var letrasNum = nomes.map(qtdeDeLetras);

  int Function(int) dobro = (numDobro) => numDobro * 2;
  /*int dobro(int numDobro) {
    return numDobro * 2;
  }*/

  var resultado = alunos.map(pegarApenasONome).map(qtdeDeLetras).map(dobro);

  print(nomes);
  print(letrasNum);
  print(resultado);
}
