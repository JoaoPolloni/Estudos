import 'package:dart/dart.dart';
import 'package:test/test.dart';

void main() {
  // test('Deve calcular arredondamento cmo multiplos de 5', () {
  //   expect(arredondaMedia(84, 5), 85);
  //   expect(arredondaMedia(29, 5), 29);
  //   expect(arredondaMedia(57, 5), 57);
  // }),

  test('deve verificar se algum aluno foi reprovado',() {
    expect(media({}), 0);
    expect(media([14, 16, 16, 18]), 16);
    expect(media([12, 14, 14, 16]), 14);
  
  };