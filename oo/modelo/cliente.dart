class Cliente {
  String? nome;
  String? cpf;

  Cliente({this.nome, this.cpf});
}

main() {
  var cliente1 = Cliente(nome: "Thiago", cpf: "012.345.678-95");
  print("${cliente1.nome} tem o cpf: ${cliente1.cpf}");
}
