class Endereco {
  String cep;
  String numero;
  String logradouro;
  String complemento;
  String bairro;
  String cidade;
  String uf;

  Endereco(this.cep, this.numero, this.logradouro, this.bairro, this.cidade,
      this.complemento, this.uf);

  validarCep(cep) {
    return cep;
  }
}
