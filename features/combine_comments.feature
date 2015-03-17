Feature: Combine comments after merge
  As a blog administrator
  In order to consolidate comments
  I want to combine comments of both articles on merges

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario:
    Given I create the article "test1" with content "test1"
    And I create the article "test2" with content "test2"
    And I comment on article "test1" as author "Ken" as email "abc" and comment "howdy"
    And I comment on article "test2" as author "Kishan" as email "123" and comment "partner"
    When I merge article "test2" into article "test1"
    And I am on the home page
    When I follow "test1"
    Then I should see "By Ken"
    And I should not see "By Kishan"
    And I should see "howdy"
