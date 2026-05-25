import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_projetopi/data/http/http_client.dart';
import 'package:flutter_projetopi/pages/home.dart';
import 'package:flutter_projetopi/pages/login/store/login.dart';
import 'package:flutter_projetopi/pages/logo.dart';
import 'package:flutter_projetopi/pages/carregando.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp( 
    //   title: 'Consumo de API',
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: '/',
    //   routes: {
    //     '/': (context) => Logo(),
    //     '/carregando': (context) => Carregando(),
    //     '/login': (context) => Login(),
    //     '/home': (context) => Home(),
    //   },
    // );

    final dio = Dio();

    return MultiProvider(
      providers: [
        Provider<Dio>.value(value: dio),
        ProxyProvider<Dio, DioClient>(update: (context, dio, dioClient) => DioClient(dio)),
      ],
      child: MaterialApp(
        title: 'Consumo de API',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Logo(),
          '/carregando': (context) => Carregando(),
          '/login': (context) => Login(),
          'home': (context) => Home(),
        },
      ),
    );
  }
}
