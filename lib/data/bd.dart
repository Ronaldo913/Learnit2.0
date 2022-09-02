import 'package:learnit2/domain/usuario.dart';
import 'package:learnit2/domain/pacote_estudo.dart';

class BD {
  static final List<Usuario> lista = [
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
    Usuario(
      nome: 'Ronaldo',
      sobrenome: 'Noberto',
      nascimento: '29/11/2004',
      celular: '82999000364',
      email: 'ronaldo@email.com',
      cpf: '123.456.789-00',
      username: 'RonaldoN',
      senha: '987654321',
    ),
  ];

  static Future<List<Usuario>> getUsuario() async {
    await Future.delayed(const Duration(seconds: 3));
    return lista;
  }

  static final List<PacoteEstudo> lista1 = [
    PacoteEstudo(
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
    PacoteEstudo(
      imagem:
      'https://ronaldo913.github.io/ImagensPMovel/images/avan%C3%A7ado.png',
      titulo: 'Pacote Médio',
      desconto: 10,
      numParcelas: 8,
      precoAntigo: 35.00,
      precoAtual: 20.00,
      redacao: 3,
      aula: 150,
      exercicio: 500,
      horas: 15,
      duvida: 1,
    ),
    PacoteEstudo(
      imagem: 'https://ronaldo913.github.io/ImagensPMovel/images/learnmed.png',
      titulo: 'Pacote LearnMed',
      desconto: 10,
      numParcelas: 10,
      precoAntigo: 50.00,
      precoAtual: 30.00,
      redacao: 5,
      aula: 200,
      exercicio: 700,
      horas: 20,
      duvida: 3,
    ),
  ];

  static Future<List<PacoteEstudo>> getPacoteEstudo() async {
    await Future.delayed(const Duration(seconds: 3));
    return lista1;
  }
}
