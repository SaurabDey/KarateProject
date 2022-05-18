Feature: Student feature file

  Background:
    * url baseURL

  Scenario: get all students
    Given path 'student/list'
    When method get
    Then status 200
    