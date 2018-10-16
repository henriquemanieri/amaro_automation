class AccountExistsPage
  include HTTParty
  base_uri "https://dev.amaro.com/shop/api/_account"

  def generateEmail
    @email = Faker::Internet.email
  end

  def postAccountExists
    self.class.post("/exists", body: {"emailOrCpf": "hulk@amaro.com"})
  end

  def postAccountNoExists
    generateEmail
    self.class.post("/exists", body: {"emailOrCpf":@email})
  end
end
