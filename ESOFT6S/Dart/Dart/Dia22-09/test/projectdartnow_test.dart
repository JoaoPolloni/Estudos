import 'package:projectdartnow/domain/Produto.dart';
import 'package:projectdartnow/domain/pedido.dart';
import 'package:projectdartnow/domain/status_pedido.dart';
import 'package:projectdartnow/projectdartnow.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(), 42);
  });

  test('Teste de pedido', () {
    Produto produto = Produto();

    List<Produto> produtos = [produto];

    Pedido pedido = Pedido(produtos: produtos, statusPedido: StatusPedido.pago);

    expect(10, pedido.getQuantidadeTotal());
  });
}
