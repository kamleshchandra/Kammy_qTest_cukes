Feature:Verify testnav login
  
  Scenario: Verify login into testnav successful
    
    Given I launch the page
    When I fill in "userName" with "nephelelocal@gmail.com"
    And I fill in "password" with "admin123"
    And I click on "logIn" button
    Then I should see text "Nephele Local" in right side pane

