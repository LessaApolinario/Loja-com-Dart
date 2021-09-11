import 'dart:io';

import 'package:loja/src/att_funcionario.dart';
import 'package:loja/src/att_livros.dart';
import 'package:loja/src/cad_funcionario.dart';
import 'package:loja/src/cad_livros.dart';
import 'package:loja/src/compra.dart';
import 'package:loja/src/consulta_funcionarios.dart';
import 'package:loja/src/consulta_livros.dart';
import 'package:loja/src/demitir.dart';
import 'package:loja/src/menu.dart';

void main(List<String> arguments) {
  bool condicao = true;
  List<Map<String, dynamic>> livros = [];
  List<Map<String, dynamic>> funcionarios = [];

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
          cadastrarFuncionario(funcionarios);
          break;
        case 5:
          atualizarFuncionario(funcionarios);
          break;
        case 6:
          demitir(funcionarios);
          break;
        case 7:
          consultarLivros(livros);
          break;
        case 8:
          consultarFuncionarios(funcionarios);
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
