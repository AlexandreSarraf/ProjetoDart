void main() {
  var nomes = ['Ana', 'João', 'Pedro'];
  var alunos = [
    {'nome': 'Alfredo', 'nota': 9.9},
    {'nome': 'Wilson', 'nota': 9.3},
    {'nome': 'Mariana', 'nota': 8.7},
    {'nome': 'Guilherme', 'nota': 8.1},
    {'nome': 'Ana', 'nota': 7.6},
    {'nome': 'Ricardo', 'nota': 6.8},
  ];

  // Transformando os nomes para letras maiúsculas
  var nomesEmMaiusculas = nomes.map((nome) => nome.toUpperCase());

  //var alunosMaius = alunos.map((aluno) => aluno['nome'].toString());
  //versão tradicional sem arrow na função.
  var alunosMaius = alunos.map((aluno) {
    return aluno['nome'].toString().toUpperCase();
  });

  print(nomesEmMaiusculas); // Saída: (ANA, JOÃO, PEDRO)
  print(alunosMaius);
  // Saída: (ALFREDO, WILSON, MARIANA, GUILHERME, ANA, RICARDO)
}
