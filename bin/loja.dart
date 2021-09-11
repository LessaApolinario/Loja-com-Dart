import 'dart:io';

import 'package:loja/src/att_livros.dart';
import 'package:loja/src/cad_livros.dart';
import 'package:loja/src/compra.dart';
import 'package:loja/src/menu.dart';

void main(List<String> arguments) {
  bool condicao = true;
  List<Map<String, dynamic>> livros = [];

  do {
    menu();
    String? opcao = stdin.readLineSync();

    if (opcao != null) {
      switch (int.parse(opcao)) {
        case 1:
          cadastrarLivro(livros);
          break;
        case 2:
          atualizarLivro(livros);
          break;
        case 3:
          comprar(livros);
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
