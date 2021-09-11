import 'dart:io';

import 'Funcionario.dart';

cadastrarFuncionario(List<Map<String, dynamic>> funcionarios) {
  Funcionario f = new Funcionario(
      nome: "Funcionario",
      sexo: "M",
      cpf: "123.456.789-01",
      telefone: "00 91234-5678",
      salario: 2000.0);
  Map<String, dynamic> funcionario = {};

  print("Informe o nome do funcionário: ");
  funcionario["nome"] = stdin.readLineSync();
  f.setNome(funcionario["nome"]);

  print("Informe o sexo do funcionário: ");
  funcionario["sexo"] = stdin.readLineSync();
  f.setSexo(funcionario["sexo"]);

  print("Informe o cpf do funcionário: ");
  funcionario["cpf"] = stdin.readLineSync();
  f.setCpf(funcionario["cpf"]);

  print("Informe o telefone do funcionário: ");
  funcionario["telefone"] = stdin.readLineSync();
  f.setTelefone(funcionario["telefone"]);

  print("Informe o salário do funcionário: ");
  funcionario["salario"] = stdin.readLineSync();
  f.setSalario(double.parse(funcionario["salario"]));

  funcionarios.add(funcionario);
}
