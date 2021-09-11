import 'dart:io';

atualizarFuncionario(List<Map<String, dynamic>> funcionarios) {
  Map<String, dynamic> funcionario = {};

  // só faz sentido atualizar o salário
  print("Informe o cpf do cliente desejado: ");
  String? cpf = stdin.readLineSync();

  if (cpf != null) {
    for (funcionario in funcionarios) {
      if (funcionario["cpf"] == cpf) {
        print("Informe o novo salário: ");
        String? salario = stdin.readLineSync();

        if (salario != null) {
          var salarioAtual = double.parse(funcionario["salario"]);
          salarioAtual += double.parse(salario);
          String novoSalario = salarioAtual.toString();

          funcionario.update("salario", (value) => novoSalario);

          print("Funcionário atualizado com sucesso!");
        }
      } else {
        print("O funcionário não existe");
      }
    }
  }
}