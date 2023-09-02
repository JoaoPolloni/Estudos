# Consumindo a API fornecida, realize as seguintes operações.
A) Trate os seguintes dados da API e crie um array de objetos, onde cada objeto representa um
pokémon e para cada pokémon os seguintes dados devem ser registrados:
- Nome
- Tipo,
- Status,
- Numero da dex,
- Altura,
- Peso
- E em moves, salve 4 moves.
B) Após criar a função que irá tratar os dados, crie uma ROTA POST que irá realizar duas operações
- Salvar os pokémons tratados em um arquivo .json
- Salve esse array de objetos no banco de dados utilizando a função do mongoose chamada insert many
(Essa função permite que você passe um array de objetos e cada índice do array irá se tornar um registro
no banco).
Ponto Extra: Tente salvar os 4 moves da cada pokémon de maneira aleatória, basta percorrer o array de
moves e pegar apenas 4 deles de maneira randômica.

2 - Mapeie o arquivo criado na questão 1 e crie um novo arquivo .json que contenha um array para
cada tipo de pokémon, e salve em cada array o pokémon que corresponde a esse tipo, ordenados pelo
número da dex. ( Você pode utilizar o método map ou reduce)

3 - Crie um CRUD para a criação de um time de pokémons. Cada time deve ter o nome do treinador
responsável pelo time, e um array de Objetos que contenha o nome dos 6 pokémons desse time.
Estrutura do TeamSchema:
trainerName: String,
team: [{
name: String
}]

a) Crie uma rota do tipo POST, onde você passe um objeto json que contenha o nome do treinador e
um array de objetos com os nomes de 6 pokémons. Através dessa requisição, recebendo esses nomes,
você deve buscar os pokémons em seu arquivo banco de dados e criar um novo arquivo chamado team,
que contenha os 6 pokémons e suas informações.

b) Crie uma rota do tipo GET, onde seja possível visualizar todos os times cadastrados

c) Crie uma rota do GET, onde seja possível filtrar um time específico utilizando o nome do treinador
como parâmetro.

d) Crie uma rota do tipo PUT onde você possa alterar as informações de um time utilizando o nome do
treinador como parâmetro

e) Crie uma rota do tipo DELETE onde você pode remover um time utilizando o nome do treinador
como parâmetro

4 - Crie uma rota do tipo GET que recebe como parâmetro o tipo do pokémon e retorne somente os
pokémons que contém esse tipo.

5 - Crie uma rota do tipo GET que filtre o pokémon por seu número na dex e traga suas informações

6 - Crie uma rota do tipo GET que filtre o pokémon pelo nome e traga suas informações
