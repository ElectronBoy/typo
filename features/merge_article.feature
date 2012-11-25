Feature: Merge Articles
  As a blog administrator
  In order to share consolidate similar blog ideas 
  I want to be able to merge articles in my blog

  Scenario: Admin has option to merge article
    Given the blog is set up
    And I am logged in as admin with aaaaaaaa
    When I follow "Your posts:"
    And I follow "Hello World!"
    Then I should see "Merge"

  Scenario: User has no option to merge article
    Given the blog is set up
    And I am logged in as user with bbbbbbbb
    When I follow "Your posts:"
    And I follow "Hello World!"
    Then I should not see "Merge"
