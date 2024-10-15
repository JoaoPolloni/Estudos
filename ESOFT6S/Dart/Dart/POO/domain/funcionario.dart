import 'package:poo/domain/cargo.dart';
import 'package:poo/domain/pessoa.dart';

class Funcionario extends Pessoa {

    String? matricula;

    Funcionario(super.nome, super.idade, this.matricula)

    //Funcionario(String nome, int idade, this.matricula);
    //{Super(nome,idade)}

    @override
    double? algumValor(){
        return 2;
    }

}