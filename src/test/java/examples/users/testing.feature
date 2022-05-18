Feature: Understanding Karate

    
  Scenario: create a user and then get it by id
     * def user =
      """
      {
        "name": "Test User",
        "username": "testuser",
        "email": "test@user.com",
        "address": {
          "street": "Has No Name",
          "suite": "Apt. 123",
          "city": "Electri",
          "zipcode": "54321-6789"
        }
      }
      """
      
    Given url diffBaseURL + '/users'
   	And request user
   	When method post
    Then status 201
   