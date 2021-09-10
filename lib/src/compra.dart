import 'dart:io';

import 'Livro.dart';

comprar(List<Map<String, dynamic>> livros) {
  Livro l = new Livro(
      id: 0,
      titulo: "Título",
      autor: "Autor",
      editora: "Editora",
      preco: 22.90,
      quantidade: 30);
  Map<String, dynamic> livro = {};

  // antes da compra
  print("Lista atual: ");
  print(livros);

  print("Informe o ID do livro a ser comprado: ");
  String? cod = stdin.readLineSync();

  if (cod != null) {
    int.parse(cod);

    for (livro in livros) {
      if (livro["id"] == cod) {
        print("Informe a quantidade do produto: ");
        String? quant = stdin.readLineSync();

        if (quant != null) {
          if (int.parse(livro["quantidade"]) >= int.parse(quant)) {
            var estoqueLivros = int.parse(livro["quantidade"]);
            estoqueLivros -= int.parse(quant);
            String estoqueNovo = estoqueLivros.toString(); // converte para string para então sobrescrever

            livro.update("quantidade", (value) => estoqueNovo);
          } else {
            print("Quantidade indisponível!");
          }
        }
      } else {
        print("O produto não existe!");
      }
    }
  }
}
