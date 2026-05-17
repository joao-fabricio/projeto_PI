import 'package:flutter/material.dart';
import 'package:flutter_projetopi/pages/login.dart';
import 'package:flutter_projetopi/pages/splash_screen.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Consumo de API',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => Login(),
      }
    );
  }
}