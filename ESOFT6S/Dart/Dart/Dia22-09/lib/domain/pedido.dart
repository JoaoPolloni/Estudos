import 'package:projectdartnow/domain/Produto.dart';
import 'package:projectdartnow/domain/pessoa.dart';
import 'package:projectdartnow/domain/status_pedido.dart';

class Pedido {
  Pessoa? cliente;
  List<Produto> produtos;
  StatusPedido statusPedido;

  Pedido({this.cliente, required this.produtos, required this.statusPedido});

  double getValorTotal() {
    double? valorTotal = 0.0;

    produtos.map((e) => e.valor).reduce((value, element) => value + element);

    return valorTotal;
  }

  int getQuantidadeTotal() {
    return produtos.length;
  }
}
