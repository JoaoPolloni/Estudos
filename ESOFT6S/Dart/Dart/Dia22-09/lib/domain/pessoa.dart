class Pessoa {
  String nome;
  String documento;
  String telefone;
  String email;
  String endereco;

  Pessoa(this.nome, this.documento, this.telefone, this.email, this.endereco);

  validarDocumento(documento) {
    return documento;
  }
}
