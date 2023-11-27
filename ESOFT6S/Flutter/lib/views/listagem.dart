import 'package:flutter/material.dart';
import 'package:projeto/models/user.dart';
import 'package:projeto/models/user_manager.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    final UserManager userManager = UserManager();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuários'),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Usuários Cadastrados:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            userManager.userList.isEmpty
                ? const Center(
                    child: Text('Nenhum usuário cadastrado.'),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: userManager.userList.length,
                      itemBuilder: (context, index) {
                        User user = userManager.userList[index];
                        return Card(
                          elevation: 2.0,
                          margin: const EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            title: Text('Nome: ${user.nome}'),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('E-mail: ${user.email}'),
                                Text('CPF: ${user.cpf}'),
                                Text('Telefone: ${user.telefone}'),
                                Text('RG: ${user.rg}'),
                                Text('Salário: ${user.salario}'),
                                Text('CEP: ${user.cep}'),
                                Text('Cidade/Estado: ${user.cidadeEstado}'),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
