import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Carregando extends StatefulWidget {
  const Carregando({super.key});

  @override
  State<Carregando> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Carregando> {
  initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/50babe79-b16d-44e1-b0c4-29e9d6705b7e/wXtdJhZOov.json',
              width: 200,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
