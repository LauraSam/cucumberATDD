Feature: Get the input field for front end part
    As a developer
    I want to be get the hotel information

    Background:
        Given I open the site "/"

    @hotelGeneralInfo
    Scenario: Get hotel Info 
        When I set "2524-9655-6136-0137" to the inputfield "input#admin_digits"
        And I press "ArrowUp"
        And I press "Enter"
        Then I wait on element ".horizontalMenu" to exist
        And I wait on element ".menu li" to be visible
        And I expect that element ".menu li" does exist
        Then I expect that element ".menu li" matches with the text "HOTEL INFO" 
        And I pause for 2000ms
  
    @Pending
    @hotelInfo:AboutUS
    Scenario: Get hotel Info 
        When I set "2524-9655-6136-0137" to the inputfield "input#admin_digits"
        And I press "ArrowUp"
        And I press "Enter"
        Then I wait on element ".horizontalMenu" to exist
        And I wait on element ".menu li" to be visible
        And I expect that element ".menu li" does exist
        When I press "ArrowRight"
        And I press "ArrowRight"
        And I expect that element ".menu li" does exist
        Then I expect that element ".menu li" matches with the text "HOTEL INFO" 
        When I press "Enter"
        And I pause for 2000ms
        And I press "Arrowup"
        And I press "Enter"
        And I pause for 2000ms

 @Pending
    @hotelInfo:GeneralInfo
    Scenario: Get hotel General Info
        When I set "2524-9655-6136-0137" to the inputfield "input#admin_digits"
        And I press "ArrowUp"
        And I press "Enter"
        Then I wait on element ".horizontalMenu" to exist
        And I wait on element ".menu li" to be visible
        And I expect that element ".menu li" does exist
        When I press "ArrowRight"
        And I press "ArrowRight"
        And I expect that element ".menu li" does exist
        Then I expect that element ".menu li" matches with the text "HOTEL INFO" 
        When I press "Enter"
        And I pause for 2000ms
        And I press "Arrowup"
        And I press "Arrowup"
        And I press "Enter"
        And I pause for 2000ms

