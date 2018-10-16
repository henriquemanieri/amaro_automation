class CreateAccountPage
  include HTTParty
  base_uri "https://dev.amaro.com/shop/api/_account"


  def createAccount
    @email = AccountExistsPage.new.generateEmail
    @cpf = (rand 11111111111..99999999999)
    @name = Faker::Name.first_name
    @lastname = Faker::Name.last_name
    @password = (rand 111111..999999)
    @birthDate = "20/10/2000"
    @phone = "(11) 98765-5433"

    @newAccount = {
      "name": @name,
      "lastname": @lastname,
      "email": @email,
      "password": @password,
      "cpf": @cpf,
      "birthdate": @birthDate,
      "phone": @phone
    }

  end

  def postCreateAccount
    createAccount
    self.class.post("/create", body: @newAccount)
  end
end
