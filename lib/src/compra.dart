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

  livro["quantidade"] = l.getQuantidade();

  for (livro in livros) {
    if (livro["id"] == l.id) {
      print("Informe a quantidade de livros do mesmo volume: ");
      l.quantidade = stdin.readLineSync();
      // até aqui funcionando

      if (livro["quantidade"] == 0) {
        print("Estoque vazio para este volume!");
      } else {
        livro["quantidade"] -= l.quantidade;

        l.setQuantidade(int.parse(livro["quantidade"]));
      }
    } else {
      print("O ID não existe!");
    }
  }

  print("Lista atual: ");
  print(livros);

  // print("Livro comprado com sucesso!");
}
