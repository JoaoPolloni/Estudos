void main (List<String> arguments) {
    Pessoa manuel = Pessoa("Manuel", 20);
    print(manuel);
    Pessoa joao = Pessoa.construtorNome: ("joao");
    print(joao);

    Pessoa.total(50,nome: "Joaquim");
    Pessoa.total(50,nome: "Maria");
}

abstract class 