import 'package:flutter/material.dart';
import 'package:crud/view/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( 
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.pinkAccent.shade400,
      ),
      ),
    home: const Home(),
    );
  }
}
