class Livro {
  var id;
  var titulo;
  var autor;
  var editora;
  var preco;
  var quantidade;

  Livro({var id, var titulo, var autor, var editora, var preco, var quantidade}) {
    this.id = id;
    this.titulo = titulo;
    this.autor = autor;
    this.editora = editora;

    if (preco > 0) {
      this.preco = preco;
    }

    if (quantidade >= 0) {
      this.quantidade = quantidade;
    }
  }

  // ID
  void setID(int id) {
    this.id = id;
  }

  int getID() {
    return id;
  }

  // Título
  void setTitulo(String titulo) {
    this.titulo = titulo;
  }

  String getTitulo() {
    return titulo;
  }

  // Autor
  void setAutor(String autor) {
    this.autor = autor;
  }

  String getAutor() {
    return autor;
  }

  // Editora
  void setEditora(String editora) {
    this.editora = editora;
  }

  String getEditora() {
    return editora;
  }

  // Preço
  void setPreco(double preco) {
    if (preco > 0) {
      this.preco = preco;
    }
  }

  double getPreco() {
    return preco;
  }

  // Quantidade
  void setQuantidade(int quantidade) {
    if (quantidade >= 0) {
      this.quantidade = quantidade;
    }
  }

  int getQuantidade() {
    return quantidade;
  }
}
