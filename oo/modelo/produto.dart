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

  String ExibirAtributos() {
    return '''
    Produto:
      Código: ${codigo ?? 'N/A'}
      Nome: ${nome ?? 'N/A'}
      Preço: ${preco != null ? 'R\$${preco!.toStringAsFixed(2)}' : 'N/A'}
      Desconto: ${desconto != null ? '${(desconto! * 100).toStringAsFixed(1)}%' : 'N/A'}
      Preço com Desconto: ${preco != null && desconto != null ? 'R\$${precoComDesconto!.toStringAsFixed(2)}' : 'N/A'}
    ''';
  }
}

main() {
  var produto1 =
      Produto(codigo: 1, nome: "Notebook", preco: 3500, desconto: 0.1);
  print(produto1.precoComDesconto);
}
