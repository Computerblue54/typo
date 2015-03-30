Feature: Create and edit categories
  As a blog administrator
  In order to update features
  I want to be able to create or edit them

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario:
    When I follow "Categories"
    Then I should see "Name"
    And I should see "Keywords"
    And I should see "Permalink"
    And I should see "Description"