import 'dart:io';

import 'Livro.dart';

cadastrarLivro(List<Map<String, dynamic>> livros) {
  Livro l = new Livro(
      id: 0,
      titulo: "Título",
      autor: "Autor",
      editora: "Editora",
      preco: 22.90,
      quantidade: 30);
  Map<String, dynamic> livro = {};

  print("Bem-vindo ao cadastro de livros!");
  
  print("Informe o ID do livro: ");
  livro["id"] = stdin.readLineSync();  
  l.setID(int.parse(livro["id"])); // adicionando ao setter

  print("Informe o título do livro: ");
  livro["titulo"] = stdin.readLineSync();
  l.setTitulo(livro["titulo"]); // adicionando ao setter

  print("Informe o autor do livro: ");
  livro["autor"] = stdin.readLineSync();
  l.setAutor(livro["autor"]); // adicionando ao setter

  print("Informe a editora do livro: ");
  livro["editora"] = stdin.readLineSync();
  l.setEditora(livro["editora"]); // adicionando ao setter

  print("Informe o preço do livro: ");
  livro["preco"] = stdin.readLineSync();
  l.setPreco(double.parse(livro["preco"])); // adicionando ao setter
  
  print("Informe a quantidade de volumes: ");
  livro["quantidade"] = stdin.readLineSync();
  l.setQuantidade(int.parse(livro["quantidade"])); // adicionando ao setter

  livros.add(livro); // adicionando ao array

  print("Livro cadastrado com sucesso!");
}
