import 'dart:io';

void consultarLivros(List<Map<String, dynamic>> livros) {
  Map<String, dynamic> livro = {};
  int counter = 1;

  print("Livros: ");

  for (livro in livros) {
    print("--------------------");
    print("Livro: ${counter}");
    print("ID = ${livro["id"]}");
    print("Título =  ${livro["titulo"]}");
    print("Autor = ${livro["autor"]}");
    print("Editora = ${livro["editora"]}");
    print("Preço = ${livro["preco"]}");
    print("Quantidade = ${livro["quantidade"]}");
    print("--------------------");

    counter++;
  }
}
