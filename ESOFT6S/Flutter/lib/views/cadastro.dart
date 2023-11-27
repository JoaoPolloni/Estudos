import 'package:flutter/material.dart';
import 'package:projeto/models/user.dart';
import 'package:projeto/models/user_manager.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  CadastroState createState() => CadastroState();
}

class CadastroState extends State<Cadastro> {
  final TextEditingController nomeController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController cpfController = TextEditingController();
  final TextEditingController telefoneController = TextEditingController();
  final TextEditingController rgController = TextEditingController();
  final TextEditingController salarioController = TextEditingController();
  final TextEditingController cepController = TextEditingController();
  final TextEditingController cidadeEstadoController = TextEditingController();

  void cadastrarUsuario() {
    final UserManager userManager = UserManager();
    userManager.userList.add(User(
      nome: nomeController.text,
      email: emailController.text,
      cpf: cpfController.text,
      telefone: telefoneController.text,
      rg: rgController.text,
      salario: double.tryParse(salarioController.text) ?? 0.0,
      cep: cepController.text,
      cidadeEstado: cidadeEstadoController.text,
    ));

    // Limpar os campos
    nomeController.clear();
    emailController.clear();
    cpfController.clear();
    telefoneController.clear();
    rgController.clear();
    salarioController.clear();
    cepController.clear();
    cidadeEstadoController.clear();

    // Retorna a tela anterior
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Usuário'),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildTextField('Nome', nomeController),
            buildTextField('E-mail', emailController),
            buildTextField('CPF', cpfController),
            buildTextField('Telefone de Contato', telefoneController),
            buildTextField('RG', rgController),
            buildTextField('Salário', salarioController),
            buildTextField('CEP', cepController),
            buildTextField('Cidade/Estado', cidadeEstadoController),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: cadastrarUsuario,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                onPrimary: Colors.white,
              ),
              child: const Text('Cadastrar'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Retorna a lista para a tela anterior
                Navigator.pop(context);
              },

              child: const Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller,
      {TextInputType? keyboardType}) {
    return Column(
      children: [
        TextField(
          controller: controller,
          decoration: InputDecoration(labelText: label),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }
}
