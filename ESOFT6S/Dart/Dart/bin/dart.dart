import 'dart:io';

void main() {
  double nota1, nota2, nota3, media, mediaFinal, notaRecuperacao;
  
  stdout.write('Insira numeros padrão "9,9"');
  stdout.write('1ª NOTA = ');
  nota1 = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
 
  stdout.write('2ª NOTA = ');
  nota2 = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
 
  stdout.write('3ª NOTA = ');
  nota3 = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
 
  media = (2 * nota1 + 3 * nota2 + 5 * nota3) / 10;
 
  print('MÉDIA = ' + media.toString());
 
  if (media < 4)
    print('REPROVADO | SEM RECUPERAÇÃO');
  else if (media >= 4 && media <= 5.9) {
    stdout.write('NOTA DA RECUPERAÇÃO = ');
    notaRecuperacao = double.tryParse(stdin.readLineSync() ?? '0') ?? 0;
    mediaFinal = (notaRecuperacao + media) / 2;
    if (mediaFinal >= 5) {
      print('APROVADO | FINAL');
    } else {
      print('REPROVADO | FINAL');
    }
  } else {
    print('APROVADO');
  }
}