@http://www.pivotaltracker.com/story/show/11692491
Feature: User signs in
  In order to gain access to the system
  As an unauthenticated user attempting to visit any page in the system
  I want to sign in

  - Field for entering username is visible (required)
  - Field for entering password is visible (required)
  - "Sign In" button is visible
  - Clicking "Sign In" attempts to sign me in
  - If I provide the correct credentials, I am signed in and sent to the Dashboard
  - Welcome message is visible
  - If the credentials are incorrect, I see a message that the sign in attempt was invalid

  Scenario: Successful sign in
    Given I am signed in as a user
    Then I should be on the dashboard page

  Scenario: Empty sign in credentials
    Given I am on the sign in page
    And I press "Sign in"
    Then I should see "Invalid email or password"

  Scenario: Invalid sign in
    Given the following user:
      | email                 | jack.daniels@mail.com |
      | password              | welcome               |
      | password_confirmation | welcome               |
    And I am on the sign in page
    When I fill in "user_email" with "sam.adams@mail.com"
    And I fill in "user_password" with "password"
    And I press "Sign in"
    Then I should see "Invalid email or password"
