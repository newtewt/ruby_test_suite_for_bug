Feature: Scrolling then touching is not working in tableviews

  Scenario: User scrolls then taps a tableview cell and no action occurs
    Given I am on the home page
    When I swipe up
    And touch the third cell index
    Then the detail view is displayed