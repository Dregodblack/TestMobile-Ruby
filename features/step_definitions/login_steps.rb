Dado('que estou na tela de login') do
  expect(login_page.exibicao_ok?).to be_truthy, 'Tela de login não exibida'
end

Quando('solicito um login com dados válidos') do
  login_page.logar('standard_user', 'secret_sauce')
  login_page.clicar_login
end

Então('sou direcionado para a tela de produtos') do
  expect(products_page.exibicao_ok?).to be_truthy, 'Tela de produtos não exibida'
end
