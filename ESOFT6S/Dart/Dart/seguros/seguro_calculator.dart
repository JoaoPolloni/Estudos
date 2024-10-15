
void main() {
  // Dados do veículo
  double valorFipe = 50000.0;  // Valor da Fipe
  String tipoVeiculo = 'Passeio';  // Tipo do veículo (Passeio, Transporte, Carga)
  bool usoProfissional = false;  // Indica se o veículo é de uso profissional
  bool possuiEstacionamento = true;  // Indica se o veículo possui estacionamento
  String tipoEstacionamento = 'Automático';  // Tipo de estacionamento (Automático, Manual)
  
  // Dados do segurado
  String estadoCivil = 'Solteiro';  // Estado civil (Solteiro, Casado, Viúvo, Divorciado, União Estável)
  
  // Cálculo do valor do seguro baseado nas regras
  double valorSeguro = calcularValorSeguro(valorFipe, tipoVeiculo, usoProfissional, possuiEstacionamento, tipoEstacionamento, estadoCivil);
  
  print('O valor do seguro é: $valorSeguro');
}

double calcularValorSeguro(double valorFipe, String tipoVeiculo, bool usoProfissional, bool possuiEstacionamento, String tipoEstacionamento, String estadoCivil) {
  double percentualTipoVeiculo = 0.0;
  double percentualEstacionamento = 0.0;
  double percentualEstadoCivil = 0.0;
  
  // Definindo percentuais com base no tipo de veículo
  if (tipoVeiculo == 'Passeio') {
    percentualTipoVeiculo = usoProfissional ? 0.143 : 0.12;
  } else if (tipoVeiculo == 'Transporte') {
    percentualTipoVeiculo = 0.135;
  } else if (tipoVeiculo == 'Carga') {
    percentualTipoVeiculo = 0.08;
  }
  
  // Definindo percentuais com base no tipo de estacionamento
  if (possuiEstacionamento) {
    percentualEstacionamento = tipoEstacionamento == 'Automático' ? -0.045 : -0.02;
  }
  
  // Definindo percentuais com base no estado civil
  if (estadoCivil == 'Solteiro' || estadoCivil == 'Divorciado') {
    percentualEstadoCivil = 0.08;
  } else if (estadoCivil == 'Casado' || estadoCivil == 'União Estável') {
    percentualEstadoCivil = -0.025;
  } else if (estadoCivil == 'Viúvo') {
    percentualEstadoCivil = -0.05;
  }
  
  // Calculando valor do seguro
  double valorSeguro = valorFipe * (1 + percentualTipoVeiculo + percentualEstacionamento + percentualEstadoCivil);
  return valorSeguro;
}
