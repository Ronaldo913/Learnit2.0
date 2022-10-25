import 'package:flutter/material.dart';
import 'package:learnit2/data/dao/user_dao.dart';
import 'package:learnit2/domain/user.dart';
import 'package:learnit2/pages/Previous/login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _sobreController = TextEditingController();
  final _dataController = TextEditingController();
  final _phoneController = TextEditingController();
  final _mailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _userController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network("https://ronaldo913.github.io/ImagensPMovel/images/logo.png"),
                  const SizedBox(height: 16),
                   TextFormField(
                     controller: _nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0))),
                      labelText: 'Nome',
                      hintText: 'Digite aqui seu nome...',
                      prefixIcon: Icon(Icons.person),
                    ),
                     validator: (value){
                      if (value == null || value.isEmpty){
                        return 'O campo nome é obrigatório';
                      }
                      if (value.length < 3){
                        return 'Digite um nome válido';
                      }
                      return null;
                     }
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                      controller: _sobreController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(90.0)
                          ),
                      ),
                      labelText: 'Sobrenome',
                      hintText: 'Digite aqui seu sobrenome...',
                      prefixIcon: Icon(Icons.person),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'O campo sobrenome é obrigatório';
                        }
                        if (value.length < 3){
                          return 'Digite um sobrenome válido';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                      keyboardType: TextInputType.number,
                    controller: _dataController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0))),
                      labelText: 'Data de nascimento',
                      hintText: 'Digite aqui sua data de nascimento...',
                      prefixIcon: Icon(Icons.calendar_today),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'O campo data é obrigatório';
                        }
                        if (value.length < 8){
                          return 'Digite uma data válida';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                      keyboardType: TextInputType.number,
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0))),
                      labelText: 'Celular',
                      hintText: 'Digite aqui seu celular...',
                      prefixIcon: Icon(Icons.phone),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'O campo celular é obrigatório';
                        }
                        if (value.length < 11){
                          return 'Digite um número de celular válido';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _mailController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0))),
                      labelText: 'E-mail',
                      hintText: 'Digite aqui seu e-mail...',
                      prefixIcon: Icon(Icons.mail),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'O campo e-mail é obrigatório';
                        }
                        if (!value.contains("@")) {
                          return 'Digite um e-mail válido';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _cpfController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0))),
                      labelText: 'CPF',
                      hintText: 'Digite aqui seu CPF...',
                      prefixIcon: Icon(Icons.lock),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'O campo CPF é obrigatório';
                        }
                        if (value.length < 11){
                          return 'Digite um CPF válido';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _userController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0))),
                      labelText: 'Username',
                      hintText: 'Aqui você deve criar seu username...',
                      prefixIcon: Icon(Icons.alternate_email_outlined),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'O campo é obrigatório';
                        }
                        if (value.length < 8){
                          return 'Deve conter no mínimo 8 caracteres';
                        }
                        if (!value.contains("@")) {
                          return 'Digite um user válido, deve ter um @';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _passController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(90.0))),
                      labelText: 'Senha',
                      hintText: 'Aqui você deve criar uma senha...',
                      prefixIcon: Icon(Icons.vpn_key),
                    ),
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return 'O campo é obrigatório';
                        }
                        if (value.length < 8){
                          return 'Deve conter no mínimo 8 caracteres';
                        }
                        return null;
                      }
                  ),
                  const SizedBox(height: 42),
                  ElevatedButton(onPressed: onPressed,
                    child: const Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: const Text('Cadastrar'),
                      ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)
                      )
                    ),
                  )
                ],
              ),
            ),
          ),
        )
    )
    );
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String nameDigitado = _nameController.text;
      String sobrenomeDigitado = _sobreController.text;
      String nascimentoDigitado = _dataController.text;
      String celularDigitado = _phoneController.text;
      String emailDigitado = _mailController.text;
      String cpfDigitado = _cpfController.text;
      String usernameDigitado = _userController.text;
      String passwordDigitado = _passController.text;

      User user = User(nome: nameDigitado, sobrenome: sobrenomeDigitado, nascimento: nascimentoDigitado, celular: celularDigitado, email: emailDigitado, cpf: cpfDigitado, username: usernameDigitado, password: passwordDigitado);
      await UserDao().salvarUser(user: user);

      showSnackBar('USUÁRIO CRIADO!');
      Navigator.pop(context);

    } else {
      showSnackBar("ERRO NA VALIDAÇÃO!");
    }
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
