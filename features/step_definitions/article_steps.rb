
And /^I create the article "([^"]*)" with content "([^"]*)"$/ do |article, content|
  steps %Q{
    Given I am on the new article page
    When I fill in "article_title" with "#{article}"
    And I fill in "article__body_and_extended_editor" with "#{content}"
    And I press "Publish"
  }
end

Given /^I am on the edit page for "([^"]*)"$/ do |article|
  steps %Q{
    Given I am on the articles page
    And I follow "#{article}"
  }
end

And /^I comment on article "([^"]*)" as author "([^"]*)" as email "([^"]*)" and comment "([^"]*)"$/ do |article, author, email, comment|
  steps %Q{
    Given I am on the home page
    Then I follow "#{article}"
    And I fill in "comment_author" with "#{author}"
    And I fill in "comment_email" with "#{email}"
    And I fill in "comment_body" with "#{comment}"
    Then I press "comment"
  }
end

And /^I merge article "([^"]*)" into article "([^"]*)"$/ do |merge, article|
  article = Article.where(:title => article).first
  merge = Article.where(:title => merge).first
  article.merge_with(merge)
end