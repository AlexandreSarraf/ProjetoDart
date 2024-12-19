main() {
  Map<String, double> notasDosAlunos = const {
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
