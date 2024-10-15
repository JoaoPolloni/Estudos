# Guia de estudos para Programação Orientada a Objetos com Dart

Este guia de estudos serve para exemplificar e compactar conceitos de Programação Orientada a Objetos. Não utilize esses exemplos de código na avaliação, pois o objetivo é que você seja capaz de pensar e codificar!

#### Paradigma de Programação
- Forma / abordagem de desenvolvimento de software que define a estrutura e organização do código.
- Conjunto de conceitos e princípios que norteiam os programadores para resolver problemas específicos.

#### Programação Orientada a Objetos
- Principais conceitos: Classes e Objetos.
- Facilita o reuso e manutenção de código.
- Possui características de um objeto da “vida real” (abstração do mundo real).

#### Classes e Objetos
- `Classe`: É a representação abstrata (modelo) de um objeto da vida real. Normalmente possui atributos, métodos, construtores e conceitos como encapsulamento, polimorfismo e herança.
- `Objeto`: É a instância concreta de uma classe. É uma representação real de um conceito do mundo real que a classe descreve.
- `Atributos`: características
- `Métodos`: comportamentos / ações

- [Exemplo](https://github.com/halmeidaprof/dart-poo-example/tree/main/lib/classe-objeto)


#### Herança `(extends)`
- Permite criar uma nova classe baseada em uma classe existente. A nova classe herda os atributos e métodos da classe pai (ou classe base), podendo também adicionar seus próprios atributos e métodos.

- [Exemplo com classe concreta](https://github.com/halmeidaprof/dart-poo-example/tree/main/lib/heranca-classe-concreta)
- [Exemplo com classe abstrata](https://github.com/halmeidaprof/dart-poo-example/tree/main/lib/heranca-classe-abstrata)


#### Interface `(implements)`
- É uma espécie de “contrato” que define um conjunto de métodos que uma classe deve implementar, trazendo modularidade e um bom nível de abstração.

- [Exemplo](https://github.com/halmeidaprof/dart-poo-example/tree/main/lib/interface)


#### Polimorfísmo
- `Grego`  -> poli = muitas, morphos = forma.
- É uma técnica da POO onde em tempo de execução o software é capaz de saber qual a classe será executada com seus respectivos métodos.

- [Exemplo](https://github.com/halmeidaprof/dart-poo-example/tree/main/lib/polimorfismo)


#### Encapsulamento
- Colocar em cápsula.

- Ele se refere à prática de esconder os detalhes internos de um objeto e fornecer uma interface pública clara por meio da qual outros objetos podem interagir com ele. Em resumo, o encapsulamento envolve o conceito de "encapsular" os dados (atributos) e os métodos (comportamentos) relacionados a um objeto em uma única unidade, a classe.


#### Coesão
- Coerência de um pensamento, ou seja, os nomes,  métodos e atributos devem fazer sentido para a classe.

#### Acoplamento
- Nível de dependência entre as classes.

- O acoplamento é um conceito importante na programação orientada a objetos (POO) e se refere ao grau de dependência entre as diferentes partes de um sistema de software, como classes ou módulos. Em outras palavras, o acoplamento mede o quanto uma classe ou componente está interligado a outros componentes do sistema. O objetivo é minimizar o acoplamento sempre que possível, pois um baixo acoplamento torna o código mais flexível, reutilizável e fácil de manter.

#### Enum
- Conjunto especial no Dart, onde é possível utilizar como constante e pode possuir atributos e métodos.
- [Exemplos de enums](https://github.com/halmeidaprof/dart-poo-example/tree/main/lib/enums)
