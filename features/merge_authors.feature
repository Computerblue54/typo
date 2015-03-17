Feature: authors after merge
  As a blog administrator
  In order to consolidate information
  I want to only retain a single author when merging

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario:
    Given I create the article "test1" with content "test1"
    And I create the article "test2" with content "test2"
    And I merge article "test2" into article "test1"
    And I am on the articles page
    Then I should see "test1"
    And I should see "admin"
    And I should not see "test2"

