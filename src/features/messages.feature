Feature: Consult your email via your own box
    As a developer
    I want to be able to consult my mail box

    Background:
        Given I open the site "/"

    Scenario: consult my mail box
        When I set "2524-9655-6136-0137" to the inputfield "input#admin_digits"
        And I press "ArrowUp"
        And I press "Enter"
        Then I wait on element ".horizontalMenu" to exist
        And I wait on element ".menu li" to be visible
        And I expect that element ".menu li" does exist
        Then I expect that element ".menu li" matches with the text "MESSAGES" 