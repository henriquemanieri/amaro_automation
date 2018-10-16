class LoginPage
  include HTTParty
  base_uri "https://dev.amaro.com/shop/api/_account"


  def postLogin
    self.class.post("/login", body: {"emailOrCpf": "hulk@amaro.com", "password": "123456"})
  end
end
