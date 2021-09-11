import 'dart:io';

atualizarLivro(List<Map<String, dynamic>> livros) {
  Map<String, dynamic> livro = {};

  print("Lista atual: ");
  print(livros);

  print("Informe o ID do livro desejado: ");
  String? id = stdin.readLineSync();

  print("Informe o novo título: ");
  String? titulo = stdin.readLineSync();

  print("Informe o novo autor: ");
  String? autor = stdin.readLineSync();

  print("Informe a nova editora: ");
  String? editora = stdin.readLineSync();

  print("Informe o novo preço: ");
  String? preco = stdin.readLineSync();

  print("Informe a nova quantidade: ");
  String? quantidade = stdin.readLineSync();

  if (id != null) {
    int.parse(id);

    for (livro in livros) {
      if (livro["id"] == id) {
        if (titulo != null) {
          livro.update("titulo", (value) => titulo.toString());
        }

        if (autor != null) {
          livro.update("autor", (value) => autor.toString());
        }

        if (editora != null) {
          livro.update("editora", (value) => editora.toString());
        }

        if (preco != null) {
          livro.update("preco", (value) => double.parse(preco));
        }

        if (quantidade != null) {
          livro.update("quantidade", (value) => int.parse(quantidade));
        }

        print("Livro atualizado com sucesso!");
      }
    }
  }
}
