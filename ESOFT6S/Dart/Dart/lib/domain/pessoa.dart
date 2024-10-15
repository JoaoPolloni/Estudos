class Pessoa {

  String? nome;
  int? idade;

  Pessoa(this.nome, this.idade);

  Pessoa.contrutorNome(this.nome);

  Pessoa.contrutorIdade(this.idade);

  String get nome => (return nome); //Não precisa declarar get nem
  String? get getnome => nome;
}