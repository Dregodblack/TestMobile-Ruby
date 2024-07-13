Dir[File.join(File.dirname(__FILE__),'../screens/*.rb')].each { |file| require file }

module PageObjects
  
  def login_page
    PageObjects::LoginPage.new
  end

  def products_page
    PageObjects::ProductsPage.new
  end

end