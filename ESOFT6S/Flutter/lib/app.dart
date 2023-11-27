import 'package:flutter/material.dart';
import 'views/cadastro.dart';
import 'views/listagem.dart';
import 'views/home.dart';

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/cadastro': (context) => const Cadastro(),
        '/lista': (context) => const Lista(),
      },
    );
  }
}
