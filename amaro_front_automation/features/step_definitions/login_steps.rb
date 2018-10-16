Given(/^I'm on login page$/) do
@home = HomePage.new
@home.load
@home.access_login_page
end

When(/^I log in with "([^"]*)"$/) do |user|
@login = LoginPage.new
@login.email_fill($default_data['email'][user])
@login.login_enter
@login.password_fill($default_data['password'][user])
@login.login_enter
end

Then(/^the user can see his logged account$/) do
  @customer = CustomerPage.new
  @customer.confirm_customer_page
end

Given(/^I'm not a registered user$/) do
@login = LoginPage.new
  @login.email_not_registered
  @login.login_enter
  @login.confirm_alert_icon
  @login.access_register_page
end


When(/^I register my personal data$/) do
  @registration = ResgistrationPage.new
  @registration.comfirm_registration_page
  @registration.fill_registration_form
  @registration.access_user_page
end
