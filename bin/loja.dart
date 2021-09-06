import 'dart:io';

import 'package:loja/src/menu.dart';

void main(List<String> arguments) {
  bool condicao = true;

  do {
    menu();
    String? opcao = stdin.readLineSync();

    if (opcao != null) {
      switch (int.parse(opcao)) {
        case 1:
          // cadastrarLivro();
          break;
        case 2:
          // atualizarLivro();
          break;
        case 3:
          // comprar();
          break;
        case 4:
          // cadastrarFuncionario();
          break;
        case 5:
          // atualizarFuncionario();
          break;
        case 6:
          // demitir();
          break;
        case 7:
          // consultarLivros();
          break;
        case 8:
          // consultarFuncionarios();
          break;
        case 0:
          print("Obrigado pela preferência, volte sempre!");
          condicao = false;
          break;
        default:
          print("Opção inválida!");
          break;
      }
    }
  } while (condicao);
}
