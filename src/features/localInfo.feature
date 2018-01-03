Feature: Get the input field for front end part
    As a developer
    I want to be able to set the code organisation

    Background:
        Given I open the site "/"

    Scenario: Translate 
        When I set "2524-9655-6136-0137" to the inputfield "input#admin_digits"
        And I press "ArrowUp"
        And I press "Enter"
        Then I wait on element ".horizontalMenu" to exist
        And I wait on element ".menu li" to be visible
        And I expect that element ".menu li" does exist
        When I press "ArrowRight"
        And I expect that element ".menu li" does exist
        Then I expect that element ".menu li" matches with the text "LOCAL INFO" 


