#language: pt
Funcionalidade: Fazer Login


Cenario: Usuario nao logado
Dado que sou um usuario
E eu possuo uma conta cadastrada,
Então eu devo ser capaz de fazer login

Base path:
Usuário navega para página de login

Happy path
Usuário preenche dados válidos no formulário de login
Usuário clica no botão de login
Credenciais são validadas no db e usuário é redirecionado para a homepage, já logado

Sad path 1:
Usuário preenche dados inválidos no formulário de login (ex: username não tem formato válido de email)
Usuário clica no botão de login
Aplicação informa ao usuário que houve um erro no preenchimento do formulário

Sad path 2:
Usuário preenche dados válidos no formulário de login
Usuário clica no botão de login
Servidor retorna um erro ao fazer login (ex: usuário não existe, erro interno do servidor, erro de conexão com o db)


Funcionalidade: Fazer Logout


Cenario: Usuario logado
Dado que sou um usuario
E eu possuo uma conta cadastrada,
E eu estou logado,
Então eu devo ser capaz de fazer logout

Base Path:
Usuário clica no botão de logout

Happy Path:
Servidor desloga o usuário
Usuário é redirecionado para página de login

Sad Path:
Servidor retorna erro ao tentar deslogar o usuário
Erro é informado ao usuário na aplicação


Funcionalidade: Redirecionar para o Login


Cenario: Usuario nao logado
Dado que sou um usuario
E eu nao estou logado,
E eu tento acessar uma pagina restrita,
Então eu devo ser redirecionado para a pagina de login
