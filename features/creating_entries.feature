Feature: Creating entries
  In order to create new entries
  As a user
  I want to be able to do so from the main page

  Background:
    Given there are the following users:
      | email            | password |
      | user@ruby5k.in   | password |
    And I am on the homepage
    And I press "New Entry"
    Then I should see "You need to sign in or sign up before continuing."
    When I fill in "Email" with "user@ruby5k.in"
    And I fill in "Password" with "password"
    And I press "Sign in"
    Then I should see "Signed in successfully"

  Scenario: creating an entry
    And I fill in "Distance" with "5"
    And I fill in "Time" with "29"
    And I fill in "Location" with "Kukkarahalli Kere"
    And I fill in "Description" with "Good run today!"
    And I press "Share"
    Then I should see "Training has been successfully posted"
    And I should see "Created by user@ruby5k.in"

  Scenario: entry with just distance should be valid
    And I fill in "Distance" with "5"
    And I press "Share"
    Then I should see "Training has been successfully posted"

  Scenario: entry with just time should be valid
    And I fill in "Time" with "28"
    And I press "Share"
    Then I should see "Training has been successfully posted"

  Scenario: entry without distance and time should be invalid
    And I fill in "Distance" with ""
    And I fill in "Time" with ""
    And I fill in "Location" with "Kukkarahalli Kere"
    And I fill in "Description" with "Good run today!"
    And I press "Share"
    #Then I should see "Training has not been posted"
    Then I should see "You must enter distance or time or both"
