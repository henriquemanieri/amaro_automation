Given(/^my email account exist$/) do
  @account_exists = AccountExistsPage.new
  $response = @account_exists.postAccountExists
  expect($response["msg"]).to eq (true)
  puts "Response message from API: #{$response["msg"]}"

end

Given(/^my email account doesn't exist$/) do
  @account_exists = AccountExistsPage.new
  $response = @account_exists.postAccountNoExists
  expect($response["msg"]).to eq (false)
  puts "Response message from API: #{$response["msg"]}"

end

When(/^I log in with the same email$/) do
  @login = LoginPage.new
  $response = @login.postLogin
  expect($response["msg"]).to eq ("Login realizado com sucesso.")
  puts "Response message from API: #{$response["msg"]}"
end

When(/^I create a new user with the same email$/) do
  @create_account = CreateAccountPage.new
  $response = @create_account.postCreateAccount
  expect($response["msg"]).to eq ("A conta foi criada com sucesso.")
  puts "Response message from API: #{$response["msg"]}"
end

Then(/^the API return status code: "([^"]*)"$/) do |code|
  expect($response.code).to eq code.to_i
end
