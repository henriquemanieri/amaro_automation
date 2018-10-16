#encoding: utf-8

@login
Feature: Customer Login


	@active_user
  Scenario: Login Registered Customer
    Given I'm on login page
    When I log in with "registered_user"
    Then the user can see his logged account

	@inactive_user
	Scenario: Registration and Login
    Given I'm on login page
		And I'm not a registered user
    When I register my personal data
    Then the user can see his logged account
