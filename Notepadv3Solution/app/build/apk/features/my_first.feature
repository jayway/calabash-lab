Feature: Running a test
  As a mobile developer
  I want to have a sample feature file
  So I can begin testing quickly on two plattforms

Scenario: Table
  Then I should see "No notes yet"

Scenario: Detail
  Then I press "Item 1"
  Then I should see "Item 1"
  Then I should not see "Item 2"

