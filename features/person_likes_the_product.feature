Feature: Person likes the product
  In order to get early access to the product
  As a possible user
  I want to send product makers my email

  @wip
  Scenario: Add email successfully
    Given a product exists with name: "My Little Lab", description: "An app to test your products ideas.", alias: "mylittlelab", email: "bel@tripapalooza.net"
    And I am on mylittlelab's product page
    And I fill in "Email" with "vanessa@santanna.com"
    When I press "register"
    Then I should see "Thank you for having interest in our product. We will get in touch as soon as soon as possible."