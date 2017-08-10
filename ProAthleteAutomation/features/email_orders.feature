Feature: Email orders

  Scenario Outline: Email orders test

    Given I on main page of site "<website>"
    When I click on order lookup link
    And enter email address "<email>"
    And click email orders
    Then I should see a success messages "<email>","<website>"

  Examples:

    | website                              | email            |
    | http://www.justbats.com              | mike@beapro.com  |
    | http://www.justballgloves.com        | mike@beapro.com  |
    | http://www.justbats.com/mobile       | mike@beapro.com  |
    | http://www.justballgloves.com/mobile | mike@beapro.com  |