SELECT p.nome_produto, c.nome_categoria
FROM produtos p
INNER JOIN categorias c ON p.id_categoria = c.id_categoria
WHERE p.id_produto = {id_produto};
