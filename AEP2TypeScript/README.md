# AEP2TypeScript
O que deve ser feito e apresentado:

0 - Crie um CRUD de produtos (Caso não tenha feito nas duas ultimas semanas será preciso fazer agora)

1 - Cadastre 10 produtos no banco de dados

2 - Crie uma service chamada stockService (Seguindo a nova arquitetura, crie uma pasta para os problemas do dominio de estoque, chamada stock)

3 - Na service de stock utilize o map para adicionar o campo stockValue e multiplique o quantity pelo price e depois salve essa nova estrutura em uma "tabela" chamada productStock

4 - Na service de produtos crie uma rota que busque 10 produtos e retorne 4 de maneira aleatórios

5 - Na service de stock busque todos os itens do banco e utilizando o reduce traga o valor total do stock e disponibilize isso em uma rota

6 - Na service de produtos crie um método que busca todos os produtos do banco e os escreve em um arquivo de texto

7 - Para os Produtos, crie uma rota que dispare uma função que lê o arquivo de produtos e retorna seus valores
