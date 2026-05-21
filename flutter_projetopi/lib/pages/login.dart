import 'package:flutter/material.dart';
import 'package:flutter_projetopi/pages/carregando.dart';
import 'package:flutter_projetopi/widgets/custom_edit.dart';
import 'package:lottie/lottie.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LOGIN',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF9C27B0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: 800,
          height: 1000,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 213, 213, 213),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 65, left: 65),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Lottie.asset(
                //   'sla2.json',
                //   width: 180,
                //   height: 180,
                //   fit: BoxFit.cover,
                // ),
                CustomEdit(
                  label: 'Usuário',
                  icone: Icon(Icons.person),
                  isObscure: false,
                  radius: 30,
                ),
                SizedBox(height: 10),

                CustomEdit(
                  label: 'Senha',
                  icone: Icon(Icons.lock),
                  isObscure: true,
                  radius: 30,
                ),

                SizedBox(height: 20),

                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Carregando(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      'Entrar',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
