Feature: Study Feature File
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url diffBaseURL

  Scenario: get all users and then get the first user by id
    Given path 'users'
    When method get
    Then status 200

    * def first = response[0]

    Given path 'users', first.id
    When method get
    Then status 200
    