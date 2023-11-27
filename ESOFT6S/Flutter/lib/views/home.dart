import 'package:flutter/material.dart';
import 'package:projeto/views/cadastro.dart';
import 'package:projeto/views/listagem.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('João Vitor Polloni Cordeiro    RA: 21120606-2'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cadastro(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    child: const Text('Cadastrar'),
                  ),
                ),
                const SizedBox(width: 16.0), // Espaçamento entre os botões
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Lista(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 60),
                    ),
                    child: const Text('Ver Lista de Usuários'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}