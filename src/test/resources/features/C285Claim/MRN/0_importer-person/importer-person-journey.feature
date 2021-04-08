@Regression

Feature: C285 - MRN - importer-person

  @test @a11y @ZAP @1
  Scenario: User is a CDS Trader - happy path (mrn) - sorry there is a problem with the service page
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-CUS-ORG", ID Name "EORINumber" and ID Value "GB123456789012345" on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"
    Then I navigate to the "Start Page"
    And I click "Start now" on "Start Page"
    Then I am presented with the "Enter Movement Reference Number Page"
    When I enter "10ABCDEFGHIJKLMNO0" on "Enter Movement Reference Number Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Check Declaration Details Page"
    And I click continue on "Check Declaration Details Page"
    Then I am presented with the "Who Is The Declarant Page"
    When I select radio button "0" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    And I select radio button "true" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Enter Your Contact Details Page"
    And I click continue on "Enter Your Contact Details Page"
    Then I am presented with the "Choose Basis For Claim Page"
    When I select dropdown value "Incorrect Value" on "Choose Basis For Claim Page"
    And I click continue on "Choose Basis For Claim Page"
    Then I am presented with the "Enter Commodity Details Page"
    When I enter "under 500 characters" on "Enter Commodity Details Page"
    And I click continue on "Enter Commodity Details Page"
    Then I am presented with the "Select Duties Page"
    When I select "0,1,2,3" on "Select Duties Page"
    And I click continue on "Select Duties Page"
    Then I am presented with the "Enter Claim Page" "Definitive Anti-Dumping Duty - Code A80"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Countervailing Duty - Code A95"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Countervailing Duty - Code A90"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Anti-Dumping Duty - Code A85"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Check Claim Page"
    When I click continue on "Check Claim Page"
    Then I am presented with the "Check These Bank Details Are Correct Page"
    When I click continue on "Check These Bank Details Are Correct Page"
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
    Then I am presented with the "Check If Claim Was Sent Page"

  @test @2
  Scenario: User is a CDS Trader - happy path (mrn) - duplicate mrn - no company details
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-CUS-ORG", ID Name "EORINumber" and ID Value "AA12345678901234Z" on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"
    Then I navigate to the "Start Page"
    And I click "Start now" on "Start Page"
    Then I am presented with the "Enter Movement Reference Number Page"
    When I enter "10ABCDEFGHIJKLMNO1" on "Enter Movement Reference Number Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Importer Eori Entry Page"
    When I enter "GB123456789012345" on "Importer Eori Entry Page"
    And I click continue on "Importer Eori Entry Page"
    Then I am presented with the "Declarant Eori Entry Page"
    When I enter "GB123456789012345" on "Declarant Eori Entry Page"
    And I click continue on "Declarant Eori Entry Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Check Declaration Details Page"
    And I click continue on "Check Declaration Details Page"
    Then I am presented with the "Who Is The Declarant Page"
    When I select radio button "0" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    And I select radio button "false" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Choose Basis For Claim Page"
    When I select dropdown value "Duplicate Entry" on "Choose Basis For Claim Page"
    And I click continue on "Choose Basis For Claim Page"
    Then I am presented with the "Enter Duplicate Movement Reference Number Page"
    When I enter "10ABCDEFGHIJKLMNO1" on "Enter Duplicate Movement Reference Number Page"
    And I click continue on "Enter Duplicate Movement Reference Number Page"
    Then I am presented with the "Check Duplicate Declaration Details Page"
    And I click continue on "Check Duplicate Declaration Details Page"
    Then I am presented with the "Enter Commodity Details Page"
    When I enter "under 500 characters" on "Enter Commodity Details Page"
    And I click continue on "Enter Commodity Details Page"
    Then I am presented with the "Select Duties Page"
    When I select "0,1,2,3" on "Select Duties Page"
    And I click continue on "Select Duties Page"
    Then I am presented with the "Enter Claim Page" "Definitive Anti-Dumping Duty - Code A80"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Countervailing Duty - Code A95"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Countervailing Duty - Code A90"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Anti-Dumping Duty - Code A85"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Check Claim Page"
    When I click continue on "Check Claim Page"
    Then I am presented with the "Check These Bank Details Are Correct Page"
    When I click continue on "Check These Bank Details Are Correct Page"
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

  @testFail ### This test should work after CDSR-600
  Scenario: User is a CDS Trader - sad path (mrn) - same duplicate mrn - no company details
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-CUS-ORG", ID Name "EORINumber" and ID Value "GB123456789012345" on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"
    Then I navigate to the "Start Page"
    And I click "Start now" on "Start Page"
    Then I am presented with the "Enter Movement Reference Number Page"
    When I enter "10ABCDEFGHIJKLMNO0" on "Enter Movement Reference Number Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Check Declaration Details Page"
    And I click continue on "Check Declaration Details Page"
    Then I am presented with the "Who Is The Declarant Page"
    When I select radio button "0" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    And I select radio button "false" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Choose Basis For Claim Page"
    When I select dropdown value "Duplicate Entry" on "Choose Basis For Claim Page"
    And I click continue on "Choose Basis For Claim Page"
    Then I am presented with the "Enter Duplicate Movement Reference Number Page"
    When I enter "10ABCDEFGHIJKLMNO0" on "Enter Duplicate Movement Reference Number Page"
    And I click continue on "Enter Duplicate Movement Reference Number Page"
    Then I am presented with the "Enter Duplicate Movement Reference Number Page" error page

  @testFail ### This test fails on Jenkins, but works locally - 20th March 2021
  Scenario: User is a CDS Trader - happy path (mrn - enter importer and declarant EORIs)
    Given I navigate to the "Auth Login Stub Page"
    When I enter redirectURL on "Auth Login Stub Page"
    And I enter Enrollment Key "HMRC-CUS-ORG", ID Name "EORINumber" and ID Value "AA12345678901234Z" on "Auth Login Stub Page"
    And I click continue on "Auth Login Stub Page"
    Then I navigate to the "Start Page"
    And I click "Start now" on "Start Page"
    Then I am presented with the "Enter Movement Reference Number Page"
    When I enter "10ABCDEFGHIJKLMNO0" on "Enter Movement Reference Number Page"
    And I click continue on "Enter Movement Reference Number Page"
    Then I am presented with the "Importer Eori Entry Page"
    When I enter "GB123456789012345" on "Importer Eori Entry Page"
    And I click continue on "Importer Eori Entry Page"
    Then I am presented with the "Declarant Eori Entry Page"
    When I enter "GB123456789012345" on "Declarant Eori Entry Page"
    And I click continue on "Declarant Eori Entry Page"
    Then I am presented with the "Check Declaration Details Page"
    And I click continue on "Check Declaration Details Page"
    Then I am presented with the "Who Is The Declarant Page"
    When I select radio button "0" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    When I enter "" on "Enter Your Details As Registered With CDS"
    And I select radio button "true" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Enter Your Contact Details Page"
    When I enter "" on "Enter Your Contact Details Page"
    And I click continue on "Enter Your Contact Details Page"
    Then I am presented with the "Choose Basis For Claim Page"
    When I select dropdown value "Incorrect Value" on "Choose Basis For Claim Page"
    And I click continue on "Choose Basis For Claim Page"
    Then I am presented with the "Enter Commodity Details Page"
    When I enter "under 500 characters" on "Enter Commodity Details Page"
    And I click continue on "Enter Commodity Details Page"
    Then I am presented with the "Select Duties Page"
    When I select "0,1,2,3" on "Select Duties Page"
    And I click continue on "Select Duties Page"
    Then I am presented with the "Enter Claim Page" "Definitive Anti-Dumping Duty - Code A80"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Countervailing Duty - Code A95"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Definitive Countervailing Duty - Code A90"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Enter Claim Page" "Provisional Anti-Dumping Duty - Code A85"
    When I enter "10" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Check Claim Page"
    When I click continue on "Check Claim Page"
    Then I am presented with the "Check These Bank Details Are Correct Page"
    When I click continue on "Check These Bank Details Are Correct Page"
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
