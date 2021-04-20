@Regression

Feature:  C285 - Entry Number - representative company

  @test
  Scenario: User is a CDS Trader - happy path (entry number) - duplicate Entry Number
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-CUS-ORG", ID Name "EORINumber" and ID Value "GB000000000000001" on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"
    And I click "Start now" on "Start Page"
    Then I am presented with the "Enter Movement Reference Number Page"
    When I enter "000000001A00000001" on "Enter Movement Reference Number Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Enter Declaration Details Page"
    When I enter "" on "Enter Declaration Details Page"
    And I click continue on "Enter Declaration Details Page"
    Then I am presented with the "Who Is The Declarant Page"
    When I select radio button "2" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    When I enter "" on "Enter Your Details As Registered With CDS"
    And I select radio button "yes" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Enter Your Contact Details Page"
    When I enter "" on "Enter Your Contact Details Page"
    And I click continue on "Enter Your Contact Details Page"
    Then I am presented with the "Choose Basis For Claim Page"
    When I select dropdown value "Duplicate Entry" on "Choose Basis For Claim Page"
    And I click continue on "Choose Basis For Claim Page"
    Then I am presented with the "Enter Duplicate Movement Reference Number Page"
    When I enter "000000002B00000002" on "Enter Movement Reference Number Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Enter Duplicate Declaration Details Page"
    When I enter "" on "Enter Duplicate Declaration Details Page"
    And I click continue on "Enter Duplicate Declaration Details Page"
    Then I am presented with the "Enter Commodity Details Page"
    When I enter "under 500 characters" on "Enter Commodity Details Page"
    And I click continue on "Enter Commodity Details Page"
    Then I am presented with the "Select Duties Page"
    When I select "0,1,2,3,4,5,6,7,8,9,10,11,12,13" on "Select Duties Page"
    And I click continue on "Select Duties Page"
    Then I am presented with the "Enter Claim Page" "Customs Duty - Code A00"
    When I enter "2,1" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Additional Duty - Code A20"
    When I enter "3,2" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Anti-Dumping Duty - Code A30"
    When I enter "4,3" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Anti-Dumping Duty - Code A35"
    When I enter "5,4" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Countervailing Duty - Code A40"
    When I enter "6,5" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Countervailing Duty - Code A45"
    When I enter "7,6" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Value Added Tax - Code B00"
    When I enter "8,7" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Customs Duty - Code A50"
    When I enter "9,8" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Additional Duty - Code A70"
    When I enter "10,9" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Anti-Dumping Duty - Code A80"
    When I enter "11,10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Anti-Dumping Duty - Code A85"
    When I enter "12,11" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Countervailing Duty - Code A90"
    When I enter "13,12" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Countervailing Duty - Code A95"
    When I enter "14,13" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Value Added Tax - Code B05"
    When I enter "15,14" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Check Claim Page"
    When I click continue on "Check Claim Page"
    Then I am presented with the "Enter Bank Account Details Page"
    When I enter "" on "Enter Bank Account Details Page"
    And I select checkbox on "Enter Bank Account Details Page"
    And I click continue on "Enter Bank Account Details Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    When I upload a "document.pdf" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    When I select dropdown value "Commercial Invoice" on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Check Your Answers Page"
    When I click continue on "Supporting Evidence Check Your Answers Page"
    Then I am presented with the "Check Answers Accept Send Page"
    And I click continue on "Check Answers Accept Send Page"
    Then I am presented with the "Claim Submitted Page"

  @test
  Scenario: User is a CDS Trader - happy path (entry number)
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-CUS-ORG", ID Name "EORINumber" and ID Value "GB000000000000001" on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"
    And I click "Start now" on "Start Page"
    Then I am presented with the "Enter Movement Reference Number Page"
    When I enter "000000001A00000001" on "Enter Movement Reference Number Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Enter Declaration Details Page"
    When I enter "" on "Enter Declaration Details Page"
    And I click continue on "Enter Declaration Details Page"
    Then I am presented with the "Who Is The Declarant Page"
    When I select radio button "2" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    When I enter "" on "Enter Your Details As Registered With CDS"
    And I select radio button "yes" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Enter Your Contact Details Page"
    When I enter "" on "Enter Your Contact Details Page"
    And I click continue on "Enter Your Contact Details Page"
    Then I am presented with the "Choose Basis For Claim Page"
    When I select dropdown value "Incorrect CPC" on "Choose Basis For Claim Page"
    And I click continue on "Choose Basis For Claim Page"
    Then I am presented with the "Enter Commodity Details Page"
    When I enter "under 500 characters" on "Enter Commodity Details Page"
    And I click continue on "Enter Commodity Details Page"
    Then I am presented with the "Select Duties Page"
    When I select "0,1,2,3,4,5,6,7,8,9,10,11,12,13" on "Select Duties Page"
    And I click continue on "Select Duties Page"
    Then I am presented with the "Enter Claim Page" "Customs Duty - Code A00"
    When I enter "2,1" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Additional Duty - Code A20"
    When I enter "3,2" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Anti-Dumping Duty - Code A30"
    When I enter "4,3" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Anti-Dumping Duty - Code A35"
    When I enter "5,4" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Countervailing Duty - Code A40"
    When I enter "6,5" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Countervailing Duty - Code A45"
    When I enter "7,6" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Value Added Tax - Code B00"
    When I enter "8,7" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Customs Duty - Code A50"
    When I enter "9,8" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Additional Duty - Code A70"
    When I enter "10,9" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Anti-Dumping Duty - Code A80"
    When I enter "11,10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Anti-Dumping Duty - Code A85"
    When I enter "12,11" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Countervailing Duty - Code A90"
    When I enter "13,12" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Countervailing Duty - Code A95"
    When I enter "14,13" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Value Added Tax - Code B05"
    When I enter "15,14" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Check Claim Page"
    When I click continue on "Check Claim Page"
    Then I am presented with the "Enter Bank Account Details Page"
    When I enter "" on "Enter Bank Account Details Page"
    And I select checkbox on "Enter Bank Account Details Page"
    And I click continue on "Enter Bank Account Details Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    When I upload a "document.pdf" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    When I select dropdown value "Commercial Invoice" on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Check Your Answers Page"
    When I click continue on "Supporting Evidence Check Your Answers Page"
    Then I am presented with the "Check Answers Accept Send Page"
    And I click continue on "Check Answers Accept Send Page"
    Then I am presented with the "Claim Submitted Page"
