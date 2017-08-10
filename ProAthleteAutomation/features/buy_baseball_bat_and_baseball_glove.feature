Feature: Buy baseball bat and baseball gloves with different shipping and billing information and checkout on

  Scenario Outline: Buy baseball bat and buy baseball glove

    Given I on main page of site "<website_first>"
    When I select an item from the products grid "<website_first>"
    And I add the item to the cart
    And I select "<website_second>" from the brand switch at the top of the page
    When I select an item from the products grid "<website_second>"
    And I add the item to the cart
    And I am back to the checkout of "<website_first>"
    And I check items count "<count>"
    And I select the checkout button
    And I fill in my customer shipping details "<website_first>"
    And I fill in my billing information "<website_first>"
    And I fill in my payment details "<website_first>"
    And I click order button "<website_first>"
    Then I capture an order number "<order>"

  Examples:

    | website_first                         | website_second                       |count | order   |
    | http://www.justbats.com               | http://www.justballgloves.com        |2     | 4001111 |
    | http://www.justballgloves.com         | http://www.justbats.com              |4     | 4001111 |
    | http://www.justballgloves.com/mobile  | http://www.justbats.com/mobile       |2     | 4001111 |
    | http://www.justbats.com/mobile        | http://www.justballgloves.com/mobile |4     | 4001111 |