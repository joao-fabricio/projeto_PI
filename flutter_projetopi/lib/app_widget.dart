import 'package:flutter/material.dart';
import 'package:flutter_projetopi/pages/home.dart';
import 'package:flutter_projetopi/pages/login.dart';
import 'package:flutter_projetopi/pages/logo.dart';
import 'package:flutter_projetopi/pages/carregando.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consumo de API',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Logo(),
        '/carregando': (context) => Carregando(),
        '/login': (context) => Login(),
        '/home': (context) => Home(),
      },
    );
  }
}
