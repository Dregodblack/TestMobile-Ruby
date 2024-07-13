module PageObjects

  class LoginPage
    attr_accessor :txt_username, 
                  :txt_password,
                  :btn_login

    def initialize
      @txt_username = find_element(:xpath, '//android.widget.EditText[@content-desc="test-Username"]')
      @txt_password = find_element(:xpath, '//android.widget.EditText[@content-desc="test-Password"]')
      @btn_login = find_element(:xpath, '//android.view.ViewGroup[@content-desc="test-LOGIN"]')
    end

    def exibicao_ok?
      btn_login.displayed?
    end

    def logar(user, pass)
      preencher_usuario(user)
      preencher_senha(pass)
      clicar_login
    end
    
    def preencher_usuario(user)
      txt_username.send_keys(user)
    end
    
    def preencher_senha(pass)
      txt_password.send_keys(pass)
    end
    
    def clicar_login
      btn_login.click
    end

  end

end