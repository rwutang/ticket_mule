@http://www.pivotaltracker.com/story/show/11692549
Feature: User signs out
  In order to end my session
  As an authenticated user
  I want to sign out of the system

  - A "Sign Out" link is visible in the header
  - Clicking "Sign Out" opens a dialog asking me to confirm my intentions
  - Clicking "OK" in the dialog ends my session and takes me to the sign in page
  - Clicking "Cancel" closes the dialog

  Scenario: Success
    Given I am signed in as an user
    When I follow "Sign out"
    Then I should be on the sign in page
    And I should see "Signed out successfully"

    When I go to the dashboard page
    Then I should be on the sign in page
    And I should see "You need to sign in"
