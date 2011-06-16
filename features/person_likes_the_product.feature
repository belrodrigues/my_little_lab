Feature: Person likes the product
  In order to get early access to the product
  As a possible user
  I want to send product makers my email

  @wip
  Scenario: Add email successfully
    Given I am on the home page
    And I fill in "Email" with "vanessa@santanna.com"
    When I press "Create User"
    Then I should see "Thank you!"
