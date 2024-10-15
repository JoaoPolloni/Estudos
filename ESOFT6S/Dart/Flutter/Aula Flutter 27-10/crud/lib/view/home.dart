import 'package:crud/view/list_name.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CRUDE',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1)
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.
        inversePrimary,
      ),
      body: const ListName(),
    );
  }
}
