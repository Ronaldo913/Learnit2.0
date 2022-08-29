import 'package:learnit2/domain/usuario.dart';

class BD {
  static List<usuario> lista = [
    Usuario(
      imagem: 'https://ronaldo913.github.io/ImagensPMovel/images/foco.png',
      titulo: 'Pacote Foco',
      desconto: 10,
      numParcelas: 6,
      precoAntigo: 19.90,
      precoAtual: 9.90,
      redacao: 1,
      aula: 100,
      exercicio: 300,
      horas: 10,
      duvida: 0,
    ),
    Usuario(
      
    ),
    Usuario(
      
    ),
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 3));
    return lista;
  }
}
