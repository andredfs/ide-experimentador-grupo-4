#language: pt
Funcionalidade: Fazer Login

Cenario: Usuario faz o login
Dado que sou um usuario
E eu possuo uma conta cadastrada,
Então eu devo ser capaz de fazer login


Cenario: Happy Usuario loga com sucesso
Usuário navega para página de login
Usuário preenche dados válidos no formulário de login
Usuário clica no botão de login
Credenciais são validadas no db e usuário é redirecionado para a homepage, já logado

Cenario: Sad Usuario nao consegue logar
Usuário preenche dados inválidos no formulário de login (ex: username não tem formato válido de email)
Usuário clica no botão de login
Aplicação informa ao usuário que houve um erro no preenchimento do formulário

Cenario: Sad Erro ao logar
Usuário preenche dados válidos no formulário de login
Usuário clica no botão de login
Servidor retorna um erro ao fazer login (ex: usuário não existe, erro interno do servidor, erro de conexão com o db)



Funcionalidade: Fazer Logout

Cenario: Usuario logado, faz logout
Dado que sou um usuario
E eu possuo uma conta cadastrada,
E eu estou logado,
Então eu devo ser capaz de fazer logout

Cenario: Happy Usuario faz logout com sucesso
Servidor desloga o usuário
Usuário é redirecionado para página de login

Cenario: Sad erro ao fazer logout
Servidor retorna erro ao tentar deslogar o usuário
Erro é informado ao usuário na aplicação


Funcionalidade: Redirecionar para o Login

Cenario: Usuario nao logado
Dado que sou um usuario
E eu nao estou logado,
E eu tento acessar uma pagina restrita,
Então eu devo ser redirecionado para a pagina de login

Cenario: Happy redireciona com sucesso
Usuário recebe mensagem de erro 
Redireciona para página de login

Cenario: Sad usuario nao e barrado
Usuário consegue acessar página mesmo sem logar

Cenario: Sad Usuario nao e redirecionado
Usuário não consegue logar
Não é redirecionado para o login
