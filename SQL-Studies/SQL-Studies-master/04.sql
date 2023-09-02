SELECT p.nome_produto
FROM produtos p
INNER JOIN itens_pedido i ON p.id_produto = i.id_produto
INNER JOIN pedidos pe ON i.id_pedido = pe.id_pedido
INNER JOIN clientes c ON pe.id_cliente = c.id_cliente
WHERE c.id_cliente = {id_cliente}
GROUP BY p.nome_produto
ORDER BY SUM(i.quantidade) DESC
LIMIT 1;
