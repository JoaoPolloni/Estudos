enum StatusPedido {
  valor_default(sigla: "I"),
  aguardadndo_pagamento(sigla: "AP"),
  processando_pagamento(sigla: "PP"),
  pago();

  const StatusPedido({this.sigla});

  final String? sigla;
}
