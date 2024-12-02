main() {
  /*List numeros1 = [1, 2, 3, "aluno"];
  print(numeros1);

  List numeros2 = const ["prof", 2, 3, 4];
  print(numeros2);

  List<int> numeros3 = [11, 10, 9, 0, 1, 2, 3];
  print(numeros3);

  List<int> numeros4 = const [1, 2, 3, 4];
  print(numeros4);

  numeros3.add(8);
  print(numeros3);
  numeros3.sort(); //desembaralha a lista de numeros
  print(numeros3);*/
  // Map dinâmico
  Map<String, double> notasDosAlunos = {
    'Ana': 9.1,
    'Bia': 8.1,
    'Carl': 7.1,
  };

  for (var registro in notasDosAlunos.entries) {
    if (registro.value < 8) {
      print(
          '${registro.key} você teve nota ${registro.value} e por isso reprovou.');
    } else {
      print(
          '${registro.key} você passou com a nota: ${registro.value}! Muito bem.');
    }
    //print('${registro.key}: ${registro.value}\n');
  }
  //print(notasDosAlunos);
}
