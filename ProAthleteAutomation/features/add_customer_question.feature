Feature: Add customer question for item

  Scenario Outline: Add customer question test

    Given I on main page of site "<website>"
    When I select an item from the products grid "<website>"
    And I click Ask A Question "<website>"
    And I enter a question "<question>"
    And I enter a nickname "<nickname>"
    And I enter a email "<email>"
    And I click submit question button
    Then I see my question "<question>","<success_message>"

  Examples:

    | website                              | question         | nickname  | email           | success_message                                                                |
    | http://www.justbats.com              | Some question    | Mike      | mike@beapro.com | Home run! Your question has been submitted for approval!                       |
    | http://www.justballgloves.com        | Some question    | Mike      | mike@beapro.com | Home run! Your question has been submitted for approval!                       |
    | http://www.justbats.com/mobile       | Some question    | Mike      | mike@beapro.com | Thank you for your question; please allow 24 hours for your question to appear |
    | http://www.justballgloves.com/mobile | Some question    | Mike      | mike@beapro.com | Thank you for your question; please allow 24 hours for your question to appear |