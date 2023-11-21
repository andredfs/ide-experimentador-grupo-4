#language: pt
Funcionalidade: Cadastrar Usuario

Cenario: Cadastro de usuario
Dado que sou um usuario
E eu  acessei a aplicação,
Então eu devo ser capaz de me cadastrar

Cenario: Happy cadastro com sucesso
Usuário preenche dados válidos no formulário de cadastro
Usuário clica no botão de enviar os dados
Cadastro é criado no banco de dados

Cenario: Sad cadastro invalido
Usuário preenche dados inválidos (ex: tipo errado) no formulário de cadastro
Usuário clica no botão de enviar os dados
A aplicação informa ao usuário quais campos estão preenchidos erroneamente

Cenario: Sad erro do sistema ao cadastrar
Usuário preenche dados válidos no cadastro
Usuário clica no botão de enviar os dados
Servidor retorna um erro ao tentar cadastrar o usuário (ex: usuário já existe, erro interno do servidor, erro de conexão com o banco)


Funcionalidade: Excluir Conta

Cenario: Deletar cadastro do banco
Dado que sou um usuario
E eu possuo uma conta,
E estou logado,
Então eu devo ser capaz de excluir minha conta

Cenario: Happy usuario exclui cadastro com sucesso
Usuário clica no botão de confirmar a exclusão de conta
Servidor exclui a conta do db
Usuário é redirecionado para página de login

Cenario: Sad popup fecha ao cancelar
Usuário clica no botão de cancelar
Popup de confirmação fecha

Cenario: Sad erro do sistema ao excluir cadastro
Usuário clica no botão de confirmar a exclusão de conta
Servidor retorna erro ao tentar excluir a conta
Mensagem de erro é exibida ao usuário


Funcionalidade: Editar Cadastro

Cenario: Usuario cadastrado
Dado que sou um usuario
E eu possuo uma conta,
E estou logado,
Então eu devo ser capaz de editar o meu cadastro

Cenario: Happy usuario consegue editar cadastro com sucesso
Usuário digita dado atualizado
Clica no botão confirma
Campo é atualizado

Cenario: Sad cadastro nao e atualizado
Usuário digita dado novo
Clica no botão confirma
Campo não é atualizado


Funcionalidade: Resetar Senha

Cenario: Resetar senha do cadastro no banco
Dado que sou um usuario
E eu possuo uma conta,
E não estou logado,
Então eu devo ser capaz de resetar a minha senha

Cenario: Happy usuario muda a senha com sucesso
Usuário confirma o email
Recebe no email o link de resert
Insere nova senha
Senha atualizada
Redireciona para a página de Login

Cenario: Sad usuario digita email inexistente no banco
Usuário digita o email
Email não está cadastrado no banco de dados

Cenario: Sad erro ao enviar o email de recuperacao
Usuário digita o email
Email existe no banco de dados
Sistema nao envia o email com o link

Cenario: Sad senha nao e alterada
Usuário recebe o email
Altera a senha
Confirma alteração
Senha não alterada no banco de dados

