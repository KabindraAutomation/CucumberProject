Feature: Login Functionality for OpenCart E-commerce WebSite

  As a user of the openCart WebSite
  I want tp be able to log in with my account
  so that I can access my account- related features and manage my orders

  Background:
    Given I am on the OpenCart Login page

    Scenario: Successful login with valid credentials
      Given I have entered a valid username and password
      When I click on the login button
      Then I should be logged in successfully

    Scenario Outline: Unsuccessful login with invalid or empty credentials

      Given I have enter invalid "<username>" and "<password>"
      When I click on the login button
      Then  I should see an error message indicating "<error_message>"

      Examples:
      | username  | password  | error_message |
      | invalid@gnail.com | invalidPassword | Warrning: No match for e-mail and or password. |
      | abccc             | validPassword   | Warrning: No match for e-mail and or password. |
      | Valid@gmail.com   | abadd           | Warrning: No match for e-mail and or password. |

      Scenario: Navigating to the forgotten password page
        When I click the "Forgotten Password" Link
        Then I should be redirected to the password reset page
