Feature: Person likes the product
  In order to get early access to the product
  As a possible user
  I want to send product makers my email

  Scenario: Add email successfully
    Given I am at the landing page
    And I enter the "email" "vanessa@santanna.com"
    Then I see the message "Thank you!"
