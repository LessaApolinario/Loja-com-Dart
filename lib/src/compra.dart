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

  print("Informe o ID do livro a ser comprado: ");
  l.id = stdin.readLineSync();

  for (livro in livros) {
    if (livro["id"] == l.id) {
      print("Informe a quantidade de livros do mesmo volume: ");
      String? estoque = stdin.readLineSync();
      // até aqui funcionando

      if (estoque != null) {
        l.setQuantidade(int.parse(livro["quantidade"]));

        if (l.getQuantidade() <= 0) {
          print("Estoque indisponível para este volume!");
        } else if (l.getQuantidade() > 0) {
          int novoEstoque = l.getQuantidade();
          novoEstoque -= int.parse(estoque); // removendo quantidade do estoque

          livro.remove("quantidade"); // removendo o estoque do map

          livro["quantidade"] = novoEstoque; // adicionando o valor atualizado no map

          print("Livro comprado com sucesso!");
        }
      }
    } else {
      print("O ID não existe!");
    }
  }

  print("Lista atual: ");
  print(livros);
}
