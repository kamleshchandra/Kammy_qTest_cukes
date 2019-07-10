@verifylogHunter
Feature: Verify logHunter event sent to the splunk when the loginId on the students machine matches with the loginId saved in the S3 bucket.

Scenario: Verify logHunter event sent to the splunk when the sign-in or sign-out page is rendered

	Given I create a login with TestName "aitup13msec-l1" and FormName "aitup13msec-l1"
	
	And I open the login page
    And I login into the test
	And I start the test
    And I logout from the test
    
    And I add loginId to S3 bucket using logHunterADD API
    And I should see loginId added to the S3 bucket via logHunterGET API
    
    And I navigate back to login page after logout
    And I should see logHunter event added in the splunk
    
    And I resume the test
    And I logout from the test
    And I should see logHunter event added in the splunk
    
    
 
Scenario: Verify logHunter event sent to the splunk when the TestNav app is relaunched

    Given I create a login with TestName "aitup13msec-l1" and FormName "aitup13msec-l1"
	
	And I open the login page
    And I login into the test
	And I start the test
    And I logout from the test
	And I close the app
    
    And I add loginId to S3 bucket using logHunterADD API
    And I should see loginId added to the S3 bucket via logHunterGET API
    
    And I relaunch the app
    And I should see logHunter event added in the splunk
    

Scenario: Verify logHunter event sent to the splunk when the machine is restarted

    Given I create a login with TestName "aitup13msec-l1" and FormName "aitup13msec-l1"
	
	And I open the login page
    And I login into the test
	And I start the test
    And I logout from the test
	And I restart the machine
    
    And I add loginId to S3 bucket using logHunterADD API
    And I should see loginId added to the S3 bucket via logHunterGET API
    
    And I relaunch the app
    And I should see logHunter event added in the splunk

