module PageObjects
  class ProductsPage
    attr_accessor :lbl_products

    def initialize
      @lbl_products = find_element(:xpath,'//android.view.ViewGroup[@content-desc="test-Cart drop zone"]/android.view.ViewGroup/android.widget.TextView')
    end

    def exibicao_ok?
      lbl_products.displayed?
    end
    
  end
end