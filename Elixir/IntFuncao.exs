#**Introdução ao Elixir:**

#Elixir é uma linguagem de programação funcional, concorrente e geral que foi criada para ser altamente escalável e manutenível. 
#Ela é construída sobre a máquina virtual Erlang (BEAM) e se destaca por sua capacidade de lidar com sistemas distribuídos, tolerantes a falhas e altamente concorrentes. 
#Elixir é conhecida por sua sintaxe simples e expressiva, bem como pela ênfase na imutabilidade, funções puras e correspondência de padrões.

#Aqui estão alguns exemplos de código em Elixir para ilustrar conceitos-chave:

#**Exemplo de Função em Elixir:**

# Definindo uma função simples que calcula o quadrado de um número
defmodule MinhasFuncoes do
  def quadrado(numero) do
    numero * numero
  end
end

# Chamando a função
resultado = MinhasFuncoes.quadrado(5)
IO.puts("O quadrado de 5 é #{resultado}")

#Neste exemplo, definimos uma função `quadrado` que aceita um argumento `numero` e retorna o quadrado desse número.

#**Exemplo de Recursão em Elixir:**

# Definindo uma função recursiva para calcular o fatorial de um número
defmodule Fatorial do
  def calcula_fatorial(0), do: 1
  def calcula_fatorial(n), do: n * calcula_fatorial(n - 1)
end

# Chamando a função recursiva
resultado = Fatorial.calcula_fatorial(5)
IO.puts("O fatorial de 5 é #{resultado}")

#Neste exemplo, usamos uma função recursiva para calcular o fatorial de um número.

#**Exemplo de Map, Filter e Reduce em Elixir:**

# Usando as funções de alta ordem map, filter e reduce
numeros = [1, 2, 3, 4, 5]

# Map: Multiplica cada número por 2
dobro = Enum.map(numeros, fn x -> x * 2 end)

# Filter: Filtra os números pares
pares = Enum.filter(numeros, fn x -> rem(x, 2) == 0 end)

# Reduce: Calcula a soma dos números
soma = Enum.reduce(numeros, 0, fn x, acc -> x + acc end)

IO.puts("Dobro dos números: #{inspect(dobro)}")
IO.puts("Números pares: #{inspect(pares)}")
IO.puts("Soma dos números: #{soma}")

#Neste exemplo, usamos as funções de alta ordem `map`, `filter` e `reduce` para realizar operações em uma lista de números.
#O `map` multiplica cada número por 2, o `filter` seleciona apenas os números pares e o `reduce` calcula a soma dos números.

#Esses exemplos introduzem alguns dos conceitos fundamentais do Elixir, incluindo definição de funções, 
#recursão e o uso de funções de alta ordem para manipulação de coleções de dados.