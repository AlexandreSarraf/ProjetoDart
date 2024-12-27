class Pessoa {
  String? nome;
  int? idade;

  Pessoa(this.nome, this.idade);

  void MostrarNome() {
    print('Nome: $nome');
  }

  void MostrarIdade() {
    print("Idade: $idade");
  }
}

main() {
  Pessoa p1 = Pessoa('Alexandre', 27);

  p1.MostrarNome();
  p1.MostrarIdade();
}
