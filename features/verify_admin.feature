Feature: Verify Admin
  As an admin
  So that only I can merge articles
  I want to make sure non-admins can't

  Scenario: Non-admin doesnt have merge option
    Given the blog is set up
    And there exists a non_admin user
    