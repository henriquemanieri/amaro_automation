class LoginPage < SitePrism::Page

  element :emailOrCpfField, ".app__form__input [name='emailOrCpf']"
  element :passwordField, ".app__form__input [type='password']"
  element :submitButton,  ".app__form__actions [type='submit']"
  element :alertIcon, ".app__alert__icon .i-times-circle"
  element :registerLink, ".app__form__helpers [href='#register']"


  def email_fill(user)
    emailOrCpfField.set(user)
  end

  def password_fill(password)
    passwordField.set(password)
  end

  def login_enter
    submitButton.click
  end

  def email_not_registered
    emailOrCpfField.set(Faker::Internet.email)
  end

  def confirm_alert_icon
    alertIcon.value
  end

  def access_register_page
    registerLink.click
  end


end
