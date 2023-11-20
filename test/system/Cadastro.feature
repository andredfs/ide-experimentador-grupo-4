#language: pt
Funcionalidade: Cadastrar Usuario


Cenario: Usuario nao cadastrado
Dado que sou um usuario
E eu  acessei a aplicação,
Então eu devo ser capaz de me cadastrar

Base path:
Usuário navega para página de login
Usuário seleciona criar conta
Usuário é redirecionado para página de cadastro

Happy path:
Usuário preenche dados válidos no formulário de cadastro
Usuário clica no botão de enviar os dados
Cadastro é criado no banco de dados

Sad path 1:
Usuário preenche dados inválidos (ex: tipo errado) no formulário de cadastro
Usuário clica no botão de enviar os dados
A aplicação informa ao usuário quais campos estão preenchidos erroneamente

Sad path 2:
Usuário preenche dados válidos no cadastro
Usuário clica no botão de enviar os dados
Servidor retorna um erro ao tentar cadastrar o usuário (ex: usuário já existe, erro interno do servidor, erro de conexão com o banco)


Funcionalidade: Excluir Conta


Cenario: Usuario cadastrado
Dado que sou um usuario
E eu possuo uma conta,
E estou logado,
Então eu devo ser capaz de excluir minha conta

Base Path:
Usuário clica no botão de excluir conta
Campo de confirmação do email para excluir a conta

Happy path:
Usuário clica no botão de confirmar a exclusão de conta
Servidor exclui a conta do db
Usuário é redirecionado para página de login

Sad path 1:
Usuário clica no botão de cancelar
Popup de confirmação fecha

Sad path 2:
Usuário clica no botão de confirmar a exclusão de conta
Servidor retorna erro ao tentar excluir a conta
Mensagem de erro é exibida ao usuário


Funcionalidade: Editar Cadastro


Cenario: Usuario cadastrado
Dado que sou um usuario
E eu possuo uma conta,
E estou logado,
Então eu devo ser capaz de editar o meu cadastro


Funcionalidade: Resetar Senha


Cenario: Usuario cadastrado
Dado que sou um usuario
E eu possuo uma conta,
E estou logado,
Então eu devo ser capaz de resetar a minha senha

