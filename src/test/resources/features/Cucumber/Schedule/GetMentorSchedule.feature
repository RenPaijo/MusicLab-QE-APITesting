Feature: Music Lab API Automation Testing
  @Capstone @Positive @Schedule
    Scenario Outline: Get mentor schedule with valid id
    Given Get mentor schedule with valid id <id>
    When Send request get mentor schedule
    Then Should return status code 200 OK
    And Validate json schema for get mentor schedule
    Examples:
      | id |
      | 1  |
      | 2  |

  @Capstone @Positive @Schedule
  Scenario Outline: Get mentor schedule with valid id no authorization
    Given Get mentor schedule with valid id <id> no authorization
    When Send request get mentor schedule no authorization
    Then Should return status code 401 Unauthorized
    Examples:
      | id |
      | 1  |
      | 2  |


  @Capstone @Negative @Schedule
  Scenario Outline: Get mentor schedule with invalid id
    Given Get mentor schedule with invalid id "<id>"
    When Send request get invalid mentor schedule
    Then Should return status code 404 Not Found
    Examples:
    | id   |
    | asdf |
    | @#$  |



