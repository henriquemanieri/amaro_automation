class HomePage < SitePrism::Page

  set_url "https://amaro.com/"

  element :userButton, ".app__header__account .i-user"


  def access_login_page
    userButton.click
  end

end
