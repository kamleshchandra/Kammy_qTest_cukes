@verifyNavigation
Feature: Verify the correct core pages are loaded when navigating on a linear test

Scenario: Verify the correct core pages are loaded when navigating on a linear test

	Given I create a login with TestName "SimpleMultipleSections" and FormName "SimpleMultipleSections"
	
	And I open the login page
	And I should see the "login" page
	
	And I login into the test
	And I should see the "start test" page
	
	And I start the test
	And I should see the "start section" page
	
	And I start the section
	And I should be on item "1"
	
	And I navigate to end section page
	And I should see the "end section" page
	
	And I submit the section with confirmation
	And I should see the "start section" page
	
	And I start the section
	And I should be on item "1"
	
	And I navigate to end section page
	And I should see the "end section" page
	
	And I submit the section with confirmation
	And I should see the "start section" page
	
	And I start the section
	And I should be on item "1"
	
	And I navigate to end section page
	And I should see the "end test" page
	
	And I submit the test with confirmation
	And I should see the "logout" page
	
	And I navigate back to login page after logout
	And I should see the "login" page
