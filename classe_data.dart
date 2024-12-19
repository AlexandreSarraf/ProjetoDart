class Data {
  int? dia;
  int? mes;
  int? ano;

  String obterFormatada() {
    return "$dia/$mes/$ano";
  }

  String toString() {
    return obterFormatada();
  }
}

main() {
  var dataAniversario = new Data();
  dataAniversario.dia = 28;
  dataAniversario.mes = 12;
  dataAniversario.ano = 2024;

  var dataCompra = Data();
  dataCompra.dia = 19;
  dataCompra.mes = 12;
  dataCompra.ano = 2024;

  Data d2 = dataCompra;
  String s2 = dataCompra.toString();

  //print("${dataAniversario.dia}/${dataAniversario.mes}/${dataAniversario.ano}");
  print(dataAniversario);
  print(dataCompra);
  print(d2.toString());
  print(s2);
}
