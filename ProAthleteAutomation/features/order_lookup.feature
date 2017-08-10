Feature: Order lookup feature

  Scenario Outline: Order lookup test

    Given I on main page of site "<website>"
    When I click on order lookup link
    And type order number "<number>"
    And type ZIP "<zip>"
    And click order lookup
    Then I should see an order number "<number>"

  Examples:

    | website                              | number   | zip   |
    | http://www.justbats.com              | 2074577  | 64153 |
    | http://www.justballgloves.com        | 2074577  | 64153 |