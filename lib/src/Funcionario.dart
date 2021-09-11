class Funcionario {
  var nome;
  var sexo;
  var cpf;
  var telefone;
  var salario;

  Funcionario({var nome, var sexo, var cpf, var telefone, var salario}) {
    this.nome = nome;
    this.sexo = sexo;
    this.cpf = cpf;
    this.telefone = telefone;

    if (salario > 0) {
      this.salario = salario;
    }
  }

  void setNome(String nome) {
    this.nome = nome;
  }

  String getNome() {
    return nome;
  }

  void setSexo(String sexo) {
    this.sexo = sexo;
  }

  String getSexo() {
    return sexo;
  }

  void setCpf(String cpf) {
    this.cpf = cpf;
  }

  String getCpf() {
    return cpf;
  }

  void setTelefone(String telefone) {
    this.telefone = telefone;
  }

  String getTelefone() {
    return telefone;
  }

  void setSalario(double salario) {
    if (salario > 0) {
      this.salario = salario;
    }
  }

  double getSalario() {
    return salario;
  }
}
