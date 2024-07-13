#language: pt

@login
@smoke
Funcionalidade: Login
  Eu como usuário
  Quero poder logar 
  Para que possa utilizar as funcionalidades internas do aplicativo

  @login_valido
  Cenário: Validar login
    Dado que estou na tela de login
    Quando solicito um login com dados válidos
    Então sou direcionado para a tela de produtos
