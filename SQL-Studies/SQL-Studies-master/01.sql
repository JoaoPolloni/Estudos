SELECT p.nome_produto, e.quantidade_em_estoque
FROM produtos p
INNER JOIN estoque e ON p.id_produto = e.id_produto
WHERE p.id_produto = {id_produto}
AND e.id_local = {id_local};
