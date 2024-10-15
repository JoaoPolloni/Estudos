# Django Simple CRUD

Este é um projeto simples de CRUD (Create, Read, Update, Delete) utilizando o framework Django. O objetivo é demonstrar as operações básicas de um CRUD em um aplicativo web.

## Requisitos

- Python 3.7+
- Django 3.x ou superior
- Pip (gerenciador de pacotes do Python)

## Instalação

### 1. Clonando o repositório

```bash
git clone <URL_DO_REPOSITORIO>
cd <NOME_DO_DIRETORIO>
```

### 2. Instalando as dependências

Certifique-se de que o `pip` está instalado e em funcionamento. Para instalar o Django, use o comando abaixo:

```bash
pip install django
```

### 3. Criando o projeto Django

Se você ainda não criou o projeto, pode fazer isso com o comando:

```bash
django-admin startproject app .
```

- `startproject app .`: Este comando cria uma nova aplicação Django com o nome `app`. O ponto `.` indica que os arquivos do projeto serão criados no diretório atual.

### 4. Aplicando as migrações iniciais

Depois de criar o projeto, aplique as migrações iniciais do banco de dados com o comando:

```bash
python manage.py migrate
```

- `migrate`: Este comando executa as migrações, que são as instruções para criar e configurar as tabelas no banco de dados.

### 5. Criando um Superusuário

Para acessar a interface de administração do Django, crie um superusuário com o comando:

```bash
python manage.py createsuperuser
```

- `createsuperuser`: Permite criar um usuário com permissões de administrador para acessar a interface de administração do Django.

### 6. Criando o aplicativo `core`

Crie o aplicativo onde o CRUD será implementado usando o seguinte comando:

```bash
python manage.py startapp core
```

- `startapp core`: Este comando cria um novo aplicativo dentro do projeto. O nome do app é `core`, e ele conterá a lógica para o CRUD.

### 7. Criando as migrações do aplicativo

Após definir os modelos no aplicativo `core`, crie as migrações correspondentes com o comando:

```bash
python manage.py makemigrations
```

- `makemigrations`: Cria novos arquivos de migração com base nas alterações nos modelos de dados (definidos no arquivo `models.py`).

### 8. Executando o servidor de desenvolvimento

Para testar o projeto, inicie o servidor de desenvolvimento:

```bash
python manage.py runserver
```

- `runserver`: Este comando inicia o servidor local de desenvolvimento do Django. O servidor será acessível em `http://127.0.0.1:8000/` por padrão.

## Como usar

1. Acesse o painel administrativo através do navegador em `http://127.0.0.1:8000/admin/` e faça login com o superusuário criado anteriormente.
2. Crie, leia, atualize e delete objetos (registros) do modelo através da interface administrativa ou desenvolva as views e templates para interagir com a aplicação.

## Estrutura do Projeto Inicial

```bash
.
├── app/
│   ├── __init__.py
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
├── core/
│   ├── migrations/
│   ├── __init__.py
│   ├── admin.py
│   ├── apps.py
│   ├── models.py
│   ├── views.py
├── manage.py
└── db.sqlite3
```

- `app/`: Diretório principal do projeto contendo as configurações globais.
- `core/`: Aplicativo onde as operações de CRUD serão implementadas.
- `manage.py`: Script de gerenciamento do Django (executa comandos como migrações, execução do servidor, etc).
- `db.sqlite3`: Banco de dados SQLite padrão criado após as migrações.

## Contribuição

1. Faça um fork do projeto.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas alterações (`git commit -am 'Adiciona nova feature'`).
4. Faça o push para a branch (`git push origin feature/nova-feature`).
5. Crie um Pull Request.

## Licença

Este projeto é distribuído sob a licença MIT. Para mais informações, consulte o arquivo `LICENSE`.