SELECT f1.nome_funcionario AS funcionario, f2.id_funcionario AS id_gerente, f2.nome_funcionario AS gerente
FROM funcionarios f1
INNER JOIN funcionarios f2 ON f1.id_gerente = f2.id_funcionario
WHERE f1.id_funcionario = {id_funcionario};
