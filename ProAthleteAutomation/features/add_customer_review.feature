Feature: Add customer review for item

  Scenario Outline: Add customer review test

    Given I on main page of site "<website>"
    When I select an item from the products grid "<website>"
    And I click Review This "<website>"
    And I enter a review "<website>", "<title>", "<pros>", "<cons>", "<nickname>"
    And I click submit review button
    Then I see my review "<pros>", "<cons>", "<nickname>", "<success_message>"

  Examples:

    | website                              | title | pros          | cons | nickname  | success_message                                                            |
    | http://www.justbats.com              | Test  | Quality bat   | None | Mike      | Awesome! Thanks for the review;                                            |
    | http://www.justballgloves.com        | Test  | Quality gloves| None | Mike      | Your review has been submitted for approval                                |
    | http://www.justbats.com/mobile       | Test  | Quality bat   | None | Mike      | Thank you for your review; please allow 24 hours for your review to appear |
    | http://www.justballgloves.com/mobile | Test  | Quality bat   | None | Mike      | Thank you for your review; please allow 24 hours for your review to appear |