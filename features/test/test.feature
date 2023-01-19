Feature: Bestbuy Test Suite

  Background:
    Given Visit Homepage
    Then Choose a Country
    Then Close the Popup

  Scenario: Task-1
    Then Verify page title is Best Buy | Official Online Store | Shop Now & Save
    And Maximize window
    Then Search for "Drone"
    And Verify search results are listed


  Scenario: Task-2
    Then Go to Sign In page
    And Fill login form
    Then with Enter button
    And Verify successful login

  Scenario: Task-3
    Then Go to Sign In page
    Then open google
    Then Sign in with Google
    And Verify successful login
    Then Open new tab
    And Change to last window
    Given Visit Homepage
    And Verify successful login

  Scenario: Task-4
    Then Click Menu Audio Headphones Wireless Headphones from dropdown
    Then Filter Brands by "Philips" and select
    Then Click 2nd product on the search result page
    Then Click Save button on product detail page
    Then Open Saved Items list
    Then Verify that the title of saved product is on the list

  Scenario: Task-5
    Then Search for "sony tv"
    Then click 33 - 44 from TV Screen Size results
    Then Click 2nd product on the search result page
    Then Add to Cart to 2nd product
    Then Verify the Cart Subtotal




