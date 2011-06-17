Feature: Lean Startup wants to validate a product idea
  In order to validate a product idea
  As a lean startup
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

  @wip
  Scenario: Show project page successfully
    Given a product exists with name: "My Little Lab", description: "An app to test your products ideas.", alias: "mylittlelab", email: "bel@tripapalooza.net"
    When I am on mylittlelab's product page
    Then I should see "My Little Lab"


  @wip
  Scenario: Show e-mail from people interested in the product
