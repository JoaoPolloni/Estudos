import 'dart:io';
void main() {
  int number;

  // Solicitar ao usuário para inserir um número
  print('Insira um número:');
  number = int.parse(stdin.readLineSync() ?? '0');

  // Verificar se o número é múltiplo de 5
  if (number % 5 == 0) {
    print('$number é um múltiplo de 5.');
  } else {
    print('$number não é um múltiplo de 5.');
  }
}
