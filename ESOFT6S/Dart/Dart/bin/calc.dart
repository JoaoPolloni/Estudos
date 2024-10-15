import 'package:calculadora/calculadora.dart' as calculadora;
import 'package:calculadora/domain/pessoa.dart' as Pessoa;

void main(List<String> arguments) {

  
  Pessoa pessoa = Pessoa('Manuel', 20);
  print(pessoa.nome);

  pessoa.nome = 'João';
  print(pessoa.nome);


  Map<String, Map<String, List<int>>> alunos = {
  'João': 
  {
    'Matematica': [30, 45, 67, 42],
    'História': [30, 35, 37, 46],
    'ciencias': [73, 65, 79, 83]
  },
  {
  'Manuel': 
    'Matematica': [61, 60, 85, 62],
    'História': [77, 80, 75, 78],
    'ciencias': [89, 92, 75 ,80]
  },
  'Joaquim': 
  {
    'Matematica': [87, 92, 89, 72],
    'História': [92, 96, 85, 91],
    'ciencias': [39, 36, 38, 35]
  }
 };
 calculadora.calculaMediaAlunos(alunos);
}