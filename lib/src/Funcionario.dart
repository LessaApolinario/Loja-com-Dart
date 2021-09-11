class Funcionario {
  var nome;
  var sexo;
  var cpf;
  var telefone;
  var salario;
  var idade;
  var dataDeNascimento;

  Funcionario(
      {var nome,
      var sexo,
      var cpf,
      var telefone,
      var salario,
      var idade,
      var dataDeNascimento}) {
    this.nome = nome;
    this.sexo = sexo;
    this.cpf = cpf;
    this.telefone = telefone;

    if (salario > 0) {
      this.salario = salario;
    }

    if (idade > 0) {
      this.idade = idade;
    }

    this.dataDeNascimento = dataDeNascimento;
  }

  void setNome(String nome) {
    this.nome = nome;
  }

  void setSexo(String sexo) {
    this.sexo = sexo;
  }

  void setCpf(String cpf) {
    this.cpf = cpf;
  }

  void setTelefone(String telefone) {
    this.telefone = telefone;
  }

  void setSalario(double salario) {
    if (salario > 0) {
      this.salario = salario;
    }
  }

  void setIdade(int idade) {
    if (idade > 0) {
      this.idade = idade;
    }
  }

  void setDataDeNascimento(String dataDeNascimento) {
    this.dataDeNascimento = dataDeNascimento;
  }
}
