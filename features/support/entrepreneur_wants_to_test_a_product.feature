Feature: Entrepreneur wants to test a product
  In order to validate a product idea
  As an entrepreneur
  I want to test my idea to possible users

  @wip
  Scenario: Add project successfully
    Given I am on the new product page
    And I fill in "Name" with "My Little Lab"
    And I fill in "Description" with "An app to test your products ideas."
    And I fill in "Alias" with "mylittlelab"
    And I fill in "Contact e-mail" with "bel@tripapalooza.net"
    When I press "test my idea"
    Then I should see "Ok! Your idea is ready to be tested!"

