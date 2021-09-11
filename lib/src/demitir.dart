import 'dart:io';

demitir(List<Map<String, dynamic>> funcionarios) {
  Map<String, dynamic> funcionario = {};

  print("Funcionários: ");
  print(funcionarios);

  print("Informe o cpf do funcionário desejado: ");
  String? cpf = stdin.readLineSync();

  if (cpf != null) {
    for (var i = 0; i < funcionarios.length; i++) {
      if (funcionarios[i]["cpf"] == cpf) {
        int index = i;

        funcionarios.removeAt(index);
        print("Funcionário demitido com sucesso!");
        break;
      } else {
        print("O funcionário não existe!");
      }
    }    
  }
}
