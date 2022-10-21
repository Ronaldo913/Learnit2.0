import 'package:flutter/material.dart';
import 'package:learnit2/domain/user.dart';
import 'package:learnit2/pages/animations/animation.dart';
import 'package:learnit2/pages/home/home_page.dart';
import 'package:learnit2/pages/Previous/registration_page.dart';
import 'package:learnit2/pages/Previous/recuperacao.dart';
import 'package:learnit2/data/oldData/bd.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../data/dao/user_dao.dart';
import '../../data/shared_prefs_helper.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 210,
              width: 190,
              child: Image.network(
                  'https://ronaldo913.github.io/ImagensPMovel/images/png_20220714_132922_0000.png'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            keyboardType: TextInputType.text,
                            controller: _emailController,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "WorkSansLight",
                                fontSize: 16,
                              ),
                              hintText: "Username",
                              prefixIcon: const Icon(
                                Icons.email,
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide(
                                  color: Color(0xFF087f23),
                                  width: 1.5,
                                ),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(90.0)),
                                  borderSide: BorderSide(
                                      color: Colors.grey, width: 0.5)),
                            ),
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Campo vazio!';
                              } else if (!value.contains("@")) {
                                return 'Um e-mail válido deve possuir um "@"!';
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            keyboardType: TextInputType.text,
                            controller: _passController,
                            decoration: const InputDecoration(
                              hintStyle: TextStyle(
                                color: Colors.grey,
                                fontFamily: "WorkSansLight",
                                fontSize: 16,
                              ),
                              hintText: "Password",
                              prefixIcon: const Icon(
                                Icons.key,
                                color: Colors.grey,
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide(
                                  color: Color(0xFF087f23),
                                  width: 1.5,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(90.0)),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            obscureText: true,
                            validator: (String? value) {
                              if (value == null ||
                                  value.isEmpty ||
                                  value.length < 8) {
                                return 'A senha deve ter pelo menos 8 caracters';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 14.0, left: 8.0),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 05.0),
                                  child: const Icon(Icons.lock_open_sharp,
                                      color: Colors.green),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: new InkWell(
                                    child: Text('Recuperar senha',
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.green)),
                                    onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const Recuperacao();
                                        },
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 40.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: ElevatedButton(
                                    onPressed: () => onPressedLogin(),
                                    child: const Padding(
                                      padding: EdgeInsets.all(16),
                                      child: const Text(
                                        '   Entrar   ',
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side:
                                              BorderSide(color: Colors.green)),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: ElevatedButton(
                                    onPressed: tCadastro,
                                    child: const Padding(
                                      padding: EdgeInsets.all(16),
                                      child: const Text(
                                        'Cadastrar-se',
                                        style: TextStyle(
                                          color: Colors.green,
                                        ),
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side:
                                              BorderSide(color: Colors.green)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 60,
              width: 380,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF36B537),
                      Color(0xFFF177e19),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(80),
                  )),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Nosso site",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.network(
                              'https://ronaldo913.github.io/ImagensPMovel/images/web%20(1).png'),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: openSite,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: 380,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Color(0xFFF58524),
                      Color(0xFFF92B7F),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(80),
                  )),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Instagram",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.network(
                              'https://ronaldo913.github.io/ImagensPMovel/images/instagram.png'),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: openInstagram,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: 380,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                color: Color(0xFFF4285f4),
                borderRadius: BorderRadius.all(
                  Radius.circular(70),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Google",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        child: SizedBox(
                          child: Image.network(
                              'https://ronaldo913.github.io/ImagensPMovel/images/google.png'),
                          height: 28,
                          width: 28,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20),
                  ),
                  onPressed: openGoogle,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 40,
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                "Siga-nos",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void tCadastro() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const RegistrationPage();
        },
      ),
    );
  }

  void tRecuperar() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const Recuperacao();
        },
      ),
    );
  }

  Future<void> openSite() async {
    final Uri _url =
        Uri.parse('https://ronaldo913.github.io/ImagensPMovel/index.html');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> openInstagram() async {
    final Uri _url = Uri.parse('https://www.instagram.com/learnit_plus/');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> openGoogle() async {
    final Uri _url = Uri.parse('https://flutter.dev');

    if (!await launchUrl(
      _url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $_url';
    }
  }

  Future<void> onPressedLogin() async {
    if (_formKey.currentState!.validate()) {
      // List<Usuario> listaUsuario = BD.lista;
      String email = _emailController.text;
      String pass = _passController.text;

      bool resultado = await UserDao().autenticar(user: email, password: pass);

      if (resultado) {
        SharedPrefsHelper().login();

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const AnimationPage(page: HomePage());
            },
          ),
        );
      } else {
        final msg = SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            ("Usuario/Senha incorretos"),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(msg);
      }
    } else {
      print("Formulário invalido");
    }
  }
}
