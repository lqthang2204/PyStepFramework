@api_reqres
Feature: test api with fake rest api


  @reqres_api_1
  Scenario: DEMO reqres scenario 1
    Given I set apifacet as REQRES for endpoint Get-Users
    And I trigger GET call with below attributes
    And I verify response code with status is "200"
    And I verify response header with below attributes
      | FieldName       | FieldValue      | Helpers |
      | Age             |                 | NUMERIC |
      | Report-To       | 604800          | CONTAIN |
      | Vary            | Accept-Encoding | EQUAL   |
      | CF-Cache-Status | HIT             |         |
    And I verify response body with below attributes
      | FieldName    | FieldValue          | Helpers |
      | page         | 2                   | NUMERIC |
      | data[0].id   |                     | NUMERIC |
      | support.text | To keep ReqRes free | CONTAIN |
