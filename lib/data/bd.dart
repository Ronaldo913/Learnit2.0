import 'package:learnit2/domain/usuario.dart';

class BD {
  static List<usuario> lista = [
    Usuario(
      nome: 'Mayara',
      sobrenome: 'Silva',
      nascimento: '25/04/2004',
      celular: '82999000364',
      email: 'mayara@email.com',
      cpf: '123.456.789-00',
      username: 'mayarinhan',
      senha: '123456789',
    ),
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 3));
    return lista;
  }
}
