class ResgistrationPage < SitePrism::Page

  element :nameField, ".app__form__input [name='name']"
  element :lastNameField, ".app__form__input [name='lastname']"
  element :emailField,  ".app__register__route [type='email']"
  element :cpfField, ".app__form__input [name='cpf']"
  element :birthDateField, ".app__form__input [name='birthdate']"
  element :phoneField, ".app__form__input [name='phone']"
  element :passwordField, ".app__form__input [name='password']"
  element :passwordConfirmationField, ".app__form__input [name='passwordConfirmation']"
  element :submitButton, ".app__form__actions [type='submit']"

  def comfirm_registration_page
    assert_text("Nova por aqui?")
  end

  def fill_registration_form
    nameField.set(Faker::Name.first_name)
    lastNameField.set(Faker::Name.last_name)
    cpfField.set(Faker::CPF.numeric)
    birthDateField.set(create_birth_date)
    phoneField.set(create_phone_number)
    passwordField.set(password = (rand 111111..999999))
    passwordConfirmationField.set(password)
  end

  def access_user_page
    submitButton.click
  end

  def create_birth_date
    day = (rand 10..29).to_s
    month = (rand 10..12).to_s
    year = (rand 1950..2000).to_s
    return birthdate = day + month + year
  end

  def create_phone_number
    areaCode = (rand 11..25)
    phoneNumber = (rand 961111111..999999999)
    return completeNumber = areaCode.to_s + phoneNumber.to_s
  end

end
