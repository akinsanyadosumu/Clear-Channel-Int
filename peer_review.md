List of issues found


1) the Feature is not writen clearly/spealing mistake (Ssearching) and also some missing context


Improvement

Feature: Searching for a specific term

As a registered user of your website

I want to be able to make a search

So that I can find the information I am looking for


2) Scenario has an Outline defined, but missing the Examples: table


Improvement

Examples:

|searchTerm | resultingPage   |

| test | test_results_page |

| Cucumber  | cucumber_results_page |


3) Too many redundante steps defined and missing the Then step


Improvement

Reduse the number of steps to:


Given I browse to https://www.clearchannelinternational.com/

When I click on the search icon on the header

And I search the term <searchTerm>

Then I should be taken to the corresponding <resultingPage>



Part-2:   Implemented changes


Feature: Searching for a specific term

As a registered user of your website

I want to be able to make a search

So that I can find the information I am looking for


Scenario Outline: Searching function

Given I browse to https://www.clearchannelinternational.com/

When I click on the search icon on the header

And I search the term <searchTerm>

Then I should be taken to the corresponding <resultingPage>


Examples:

|searchTerm | resultingPage   |

| test | test_results_page |

| Cucumber  | cucumber_results_page |
