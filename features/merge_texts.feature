Feature: Merge Texts
  As a blog administrator
  In order to consolidate similar information
  I want to be able to merge 2 different articles

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Merge 2 articles
    Given I create the article "test1" with content "test1"
    And I create the article "test2" with content "test2"
    And I merge article "test2" into article "test1"
    And I am on the home page
    Then I should see "test1"
    When I follow "test1"
    Then I should see "test1test2"



