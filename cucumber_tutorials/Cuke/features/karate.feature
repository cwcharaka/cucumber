Feature: Traditional Karate

Scenario Outline: Where is the Master?
    Given I navigate to Google
    When I enter <karateStyle> into the search field
    Then the text <masterSername> should be present
    
    Examples:
        | karateStyle | masterSurname |
        | Wado        | Hironori      |
        | Shotokan    | Harrogate     |
        | Goju        | Shihan        |
        
    
