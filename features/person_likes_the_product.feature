Feature: Person likes the product
  In order to get early access to the product
  As a possible user
  I want to send product makers my email

  @wip
  Scenario: Add email successfully
    Given I am at the landing page
    And I fill in "Email" with "vanessa@santanna.com"
    And I press "Create User"
    Then I see the message "Thank you!"
