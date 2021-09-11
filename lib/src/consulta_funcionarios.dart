consultarFuncionarios(List<Map<String, dynamic>> funcionarios) {
  Map<String, dynamic> funcionario = {};
  int counter = 1;

  print("Funcionários: ");

  for (funcionario in funcionarios) {
    print("--------------------");
    print("Funcionário: ${counter}");
    print("Nome: ${funcionario["nome"]}");
    print("Sexo: ${funcionario["sexo"]}");
    print("CPF: ${funcionario["cpf"]}");
    print("Telefone: ${funcionario["telefone"]}");
    print("Salário: ${funcionario["salario"]}");
    print("Idade: ${funcionario["idade"]}");
    print("Data de nascimento: ${funcionario["dataDeNascimento"]}");
    print("--------------------");

    counter++;
  }
}
