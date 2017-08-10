Feature: Buy baseball bat with different shipping and billing information

  Scenario Outline: Buy baseball bat diff billing and shipping test

    Given I on main page of site "<website>"
    When I select an item from the products grid "<website>"
    And I add the item to the cart
    And I select the checkout button
    And I fill in my customer shipping details "<website>"
    And I fill in my billing information "<website>"
    And I fill in my payment details "<website>"
    And I click order button "<website>"
    Then I capture an order number "<order>"

  Examples:

    | website                              | order   |
    | http://www.justbats.com/             | 4001111 |
    | http://www.justballgloves.com/       | 4001111 |
    | http://www.justbats.com/mobile       | 4001111 |
    | http://www.justballgloves.com/mobile | 4001111 |