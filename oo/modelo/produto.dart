class Produto {
  int? codigo;
  String? nome;
  num? preco;
  num? desconto;

  Produto({this.codigo, this.nome, this.preco, this.desconto = 0});

  num? get precoComDesconto {
    if (preco != null && desconto != null) {
      return (1 - desconto!) * preco!;
    }
    return 0;
  }

  void Mostrar() {
    print("");
  }
}

main() {
  var produto1 = Produto(nome: "Notebook", preco: 3500, desconto: 0.1);
  print(produto1.nome);
}
