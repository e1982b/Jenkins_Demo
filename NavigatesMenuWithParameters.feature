@nmwp @all
Feature: Navigate to Menu with Parameters

  Background:
    Given The user is on the login page

  Scenario: User navigates to Developers Menu
    # Given The user is on the login page
    When The user logs in using "eurotech@gmail.com" and "Test12345!"
    Then The welcome message contains "Welcome Teacher"
    And The user navigates to "Developers" menu
    Then The user should be able to see header as "Filter Profiles by Skill or by Location"

  Scenario: User navigates to Post Menu
    # Given The user is on the login page
    When The user logs in using "emre@emre.com" and "9tZ8RYuGn4Tx3uY"
    Then The welcome message contains "Welcome Emre"
    And The user navigates to "All Posts" menu
    Then The user should be able to see header as "Posts"

  Scenario: User navigates to Dashboard Page
    # Given The user is on the login page
    When The user logs in using "jackbauer@gmail.com" and "Admin123"
    Then The welcome message contains "Welcome Jack Bauer"
    And The user navigates to "My Account" menu
    Then The user should be able to see header as "Dashboard"

  @smoke @so
  Scenario Outline: Navigate to Menu with SO
    When The user logs in using "<userType>" and "<password>"
    Then The welcome message contains "<welcomeMessage>"
    And The user navigates to "<menu>" menu
    Then The user should be able to see header as "<header>"

    Examples:
      | userType            | password        | welcomeMessage     | menu       | header                                  |
      | eurotech@gmail.com  | Test12345!      | Welcome Teacher    | Developers | Filter Profiles by Skill or by Location |
      | emre@emre.com       | 9tZ8RYuGn4Tx3uY | Welcome Emre       | All Posts  | Posts                                   |
      | jackbauer@gmail.com | Admin123        | Welcome Jack Bauer | My Account | Dashboard                               |
