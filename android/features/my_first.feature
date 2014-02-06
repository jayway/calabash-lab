Feature: Start app

  Scenario: When first started the app is empty
    Then I see "No Notes Yet"

Scenario: I can use the menu
	Then I press the menu key
	Then I press "Add Note"
	Then I wait up to 20 seconds for "Edit Note" to appear 

Scenario: I can add an item
 
  And I select "Add Note" from the menu 
  Then I wait up to 9 seconds for "Edit Note" to appear
