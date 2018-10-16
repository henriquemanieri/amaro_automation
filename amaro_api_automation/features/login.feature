#encoding: utf-8

@login
Feature: Customer Login


	@active_user
  Scenario: Login Registered Customer
    Given my email account exist
    When I log in with the same email
    Then the API return status code: "200"

	@inactive_user
	Scenario: Registration and Login
    Given my email account doesn't exist
    When I create a new user with the same email
    Then the API return status code: "200"
