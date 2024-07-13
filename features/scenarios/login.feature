#language: pt

@login
Funcionalidade: Login
  Eu como usuário
  Quero poder logar 
  Para que possa utilizar as funcionalidades internas do aplicativo

  Contexto: Que possua um usuário com dívida ativa
    * que estou na tela de login

  @login_curto
  Cenário: Validar login
    Quando solicito um login com dados válidos
    Então sou direcionado para a tela de produtos

  @login
  Esquema do Cenário: Validar login
    Quando preencho o formulario de login com "<usuario>"
    E solicito o login
    Então sou direcionado para a tela de produtos

    Exemplos:
    | usuario       |
    | standard_user |
    | problem_user  |
