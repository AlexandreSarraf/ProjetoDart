class Data {
  int dia;
  int mes;
  int ano;

  Data(this.dia, this.mes, this.ano);

  /*Data(int diaInicial,  mesInicial,  anoInicial) {
    dia = diaInicial;
    mes = mesInicial;
    ano = anoInicial;
  }*/

  String toString() {
    return "$dia/$mes/$ano";
  }
}

main() {
  var dataAniversario = new Data(28, 12, 2024);
  //var dataAniversario = Data(28, 12, 2024); sem new
  /*dataAniversario.dia = 28;
  dataAniversario.mes = 12;
  dataAniversario.ano = 2024;*/

  Data dataHj = Data(20, 12, 2024);
  /*dataHj.dia = 20;
  dataHj.mes = 12;
  dataHj.ano = 2024;*/

  Data d2 = dataHj;
  String s2 = dataHj.toString();
  var d1 = dataAniversario;
  var s1 = dataAniversario;

  print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  print(dataAniversario);
  //print(dataHj);
  print(d2);
  print(s1);
  print(s2);
  print(d1);
}
