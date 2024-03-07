# Car Part Identification App

Este é um aplicativo móvel desenvolvido para identificar peças de carro a partir de imagens capturadas pela câmera do dispositivo. O aplicativo utiliza técnicas de processamento de imagem para reconhecer a peça e apresenta uma lista de modelos da peça identificada, juntamente com suas substitutas.

## Membros:
- Akio Andrei Marubayashi Matera RA: 21034408-2
- Caio Henrique Rombaldo RA: 21137237-2
- João Vitor Polloni Cordeiro RA: 21120606-2

## Funcionalidades Principais
- Identificação automática de peças de carro através da câmera do dispositivo.
- Apresentação de uma lista de modelos da peça identificada e suas substitutas.
- Criação opcional de perfis de usuário.
- Visualização opcional do histórico de peças identificadas.
- Compartilhamento de resultados opcional.
- Identificação a partir da peça a seleção de Carros Compatíveis.

## Como Funciona
1. O usuário captura uma imagem da peça de carro usando a câmera do celular.
2. O aplicativo processa a imagem e identifica a peça utilizando algoritmos de visão computacional.
3. Uma lista de modelos da peça identificada e suas substitutas é exibida na tela.
4. O usuário pode explorar as opções fornecidas ou realizar outras ações disponíveis no aplicativo.

## Tecnologias Utilizadas
- Linguagem de programação para identificação e processamento dos dados de imagem: Python
- Linguagem de programação para o desenvolvimento da interface do aplicativo: Framework do JavaScript (React Native)
- Linguagem de programação para o desenvolvimento da API de integração: Framework do Python (Flask)
- Base de dados utilizada e modelo de banco de dados: PostgreSQL - Relacional
- Framework para visão computacional: OpenCV
- Ambiente de desenvolvimento: Visual Studio e Ferramentas do Google
- Ferramenta de Gerenciamento: Atlassian Jira

## Arquitetura
O projeto segue o padrão arquitetural Modelo-Visão-Controlador (MVC) para organização do código fonte:

### Model (Modelo):
- Classes para representação dos dados das peças de carro e suas informações associadas.
- Lógica para processamento de imagens e identificação de peças.
- Acesso ao banco de dados local para armazenamento e recuperação de informações.

### View (Visão):
- Responsável pela apresentação dos dados e interação com o usuário.
- Componentes de interface do usuário, como layouts, widgets e views.
- Cabeçalho (header) para navegação entre diferentes telas e funcionalidades.

### Controller (Controlador):
- Atua como intermediária entre a camada de visualização e a camada de modelo.
- Recebe inputs do usuário e traduz em ações entendidas pelo sistema.
- Gerencia o fluxo de dados e eventos dentro do aplicativo.