@Regression

Feature: C285 - File upload

  @test
  Scenario: User is a CDS Trader - uploads 3 valid files
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
    When I select radio button "0" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    When I enter "" on "Enter Your Details As Registered With CDS"
    And I select radio button "yes" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Enter Your Contact Details Page"
    When I enter "" on "Enter Your Contact Details Page"
    And I click continue on "Enter Your Contact Details Page"
    Then I am presented with the "Enter Reason For Claim And Basis Page"
    When I select dropdown value "Duplicate Entry,Special circumstances" on "Enter Reason For Claim And Basis Page"
    And I click continue on "Enter Reason For Claim And Basis Page"
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
    When I select "0" on "Select Duties Page"
    And I click continue on "Select Duties Page"
    Then I am presented with the "Enter Claim Page" "Customs Duty - Code A00"
    When I enter "2,1" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Check Claim Page"
    When I click continue on "Check Claim Page"
    Then I am presented with the "Enter Bank Account Details Page"
    When I enter "" on "Enter Bank Account Details Page"
    And I select checkbox on "Enter Bank Account Details Page"
    And I click continue on "Enter Bank Account Details Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # upload file 1
    When I upload a "image.jpg" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    When I select dropdown value "C88/E2" on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click "Add another file" on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # ---
    # upload file 2
    When I upload a "document.doc" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    When I select dropdown value "Packing List" on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click "Add another file" on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # ---
    # upload file 3
    When I upload a "document.pdf" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    When I select dropdown value "Commercial Invoice" on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Check Your Answers Page"
    # ---
    When I click continue on "Supporting Evidence Check Your Answers Page"
    Then I am presented with the "Check Answers Accept Send Page"
    And I click continue on "Check Answers Accept Send Page"
    Then I am presented with the "Claim Submitted Page"

  @test
  Scenario: User is a CDS Trader - fails file upload steps
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
    When I select radio button "0" on "Who Is The Declarant Page"
    And I click continue on "Who Is The Declarant Page"
    Then I am presented with the "Enter Your Details As Registered With CDS"
    When I enter "" on "Enter Your Details As Registered With CDS"
    And I select radio button "yes" on "Enter Your Details As Registered With CDS"
    And I click continue on "Enter Your Details As Registered With CDS"
    Then I am presented with the "Enter Your Contact Details Page"
    When I enter "" on "Enter Your Contact Details Page"
    And I click continue on "Enter Your Contact Details Page"
    Then I am presented with the "Enter Reason For Claim And Basis Page"
    When I select dropdown value "Duplicate Entry,Overpayment" on "Enter Reason For Claim And Basis Page"
    And I click continue on "Enter Reason For Claim And Basis Page"
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
    When I select "0" on "Select Duties Page"
    And I click continue on "Select Duties Page"
    Then I am presented with the "Enter Claim Page" "Customs Duty - Code A00"
    When I enter "2,1" on "Enter Claim Page"
    And I click continue on "Enter Claim Page"
    Then I am presented with the "Check Claim Page"
    When I click continue on "Check Claim Page"
    Then I am presented with the "Enter Bank Account Details Page"
    When I enter "" on "Enter Bank Account Details Page"
    And I select checkbox on "Enter Bank Account Details Page"
    And I click continue on "Enter Bank Account Details Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # I don't upload a file, but I click continue
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page" error page
    # ---
    # I upload a file that is too big
    When I upload a "image-big.jpg" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    Then I am presented with the "Supporting Evidence Document Did Not Upload Page"
    And I click continue on "Supporting Evidence Document Did Not Upload Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # ---
    # I upload a file that isn't allowed
#    When I upload a "other.dmg" file on "Supporting Evidence Upload Supporting Evidence Page"
#    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
#    Then I am presented with the "Supporting Evidence Problem With Document Page"
#    And I click continue on "Supporting Evidence Problem With Document Page"
#    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # ---
    # I upload a file that isn't allowed and is too big
#    When I upload a "other-big.dmg" file on "Supporting Evidence Upload Supporting Evidence Page"
#    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
#    Then I am presented with the "Supporting Evidence Problem With Document Page"
#    And I click continue on "Supporting Evidence Problem With Document Page"
#    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # ---
    # I upload a good file but don't select a description
    When I upload a "image.jpg" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    Then I am presented with the "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Select Supporting Evidence Type Page" error page
    # ---
    # I select a description
    When I select dropdown value "Air Waybill" on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Check Your Answers Page"
    # ---
    # I remove all uploaded documents
    When I click "Remove" on "Supporting Evidence Check Your Answers Page"
    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
    # ---
    # I upload a file successfully
    When I upload a "image.jpg" file on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue on "Supporting Evidence Upload Supporting Evidence Page"
    And I click continue if I'm on "Supporting Evidence Scan Progress Page"
    Then I am presented with the "Supporting Evidence Select Supporting Evidence Type Page"
    When I select dropdown value "Bill of Lading" on "Supporting Evidence Select Supporting Evidence Type Page"
    And I click continue on "Supporting Evidence Select Supporting Evidence Type Page"
    Then I am presented with the "Supporting Evidence Check Your Answers Page"
    # ---
    When I click continue on "Supporting Evidence Check Your Answers Page"
    Then I am presented with the "Check Answers Accept Send Page"
    And I click continue on "Check Answers Accept Send Page"
    Then I am presented with the "Claim Submitted Page"

#  @testFail ### this test may contain errors
#  Scenario Outline: User is a CDS Trader - has an EORI, uploads different types of invalid files
#    Given I navigate to the "Auth Login Stub Page"
#    When I enter redirectURL on "Auth Login Stub Page"
#    And I enter Enrollment Key "HMRC-CUS-ORG", ID Name "EORINumber" and ID Value "GB000000000000001" on "Auth Login Stub Page"
#    And I click continue on "Auth Login Stub Page"
#    Then I navigate to the "Start Page"
#    And I click "Start now" on "Start Page"
#    Then I am presented with the "Enter Movement Reference Number Page"
#    When I enter "000000001A00000001" on "Enter Movement Reference Number Page"
#    And I click continue on "Enter Movement Reference Number Page"
#    Then I am presented with the "Enter Declaration Details Page"
#    When I enter "" on "Enter Declaration Details Page"
#    And I click continue on "Enter Declaration Details Page"
#    Then I am presented with the "Who Is The Declarant Page"
#    When I select radio button "0" on "Who Is The Declarant Page"
#    And I click continue on "Who Is The Declarant Page"
#    Then I am presented with the "Enter Your Details As Registered With CDS"
#    When I enter "" on "Enter Your Details As Registered With CDS"
#    And I select radio button "yes" on "Enter Your Details As Registered With CDS"
#    And I click continue on "Enter Your Details As Registered With CDS"
#    Then I am presented with the "Enter Your Contact Details Page"
#    When I enter "" on "Enter Your Contact Details Page"
#    And I click continue on "Enter Your Contact Details Page"
#    Then I am presented with the "Enter Reason For Claim And Basis Page"
#    When I select dropdown value "Duplicate Entry,Mail Order Goods – duties not due" on "Enter Reason For Claim And Basis Page"
#    And I click continue on "Enter Reason For Claim And Basis Page"
#    Then I am presented with the "Enter Duplicate Movement Reference Number Page"
#    When I enter "000000002B00000002" on "Enter Movement Reference Number Page"
#    And I click continue on "Enter Movement Reference Number Page"
#    Then I am presented with the "Enter Duplicate Declaration Details Page"
#    When I enter "" on "Enter Duplicate Declaration Details Page"
#    And I click continue on "Enter Duplicate Declaration Details Page"
#    Then I am presented with the "Enter Commodity Details Page"
#    When I enter "under 500 characters" on "Enter Commodity Details Page"
#    And I click continue on "Enter Commodity Details Page"
#    Then I am presented with the "Select Duties Page"
#    When I select "0" on "Select Duties Page"
#    And I click continue on "Select Duties Page"
#    Then I am presented with the "Enter Claim Page" "Customs Duty - Code A00"
#    When I enter "2,1" on "Enter Claim Page"
#    And I click continue on "Enter Claim Page"
#    Then I am presented with the "Check Claim Page"
#    When I click continue on "Check Claim Page"
#    Then I am presented with the "Enter Bank Account Details Page"
#    When I enter "" on "Enter Bank Account Details Page"
#    And I select checkbox on "Enter Bank Account Details Page"
#    And I click continue on "Enter Bank Account Details Page"
#    Then I am presented with the "Supporting Evidence Upload Supporting Evidence Page"
#    When I click continue on "Supporting Evidence Check Your Answers Page"
#    Then I am presented with the "Check Answers Accept Send Page"
#    And I click continue on "Check Answers Accept Send Page"
#    Then I am presented with the "Claim Submitted Page"
#
#    Examples:
#      | filetype       |
#      | "document.odt" |
#      | "document.ods" |
#      | "document.odp" |
#      | "document.rtf" |
#      | "image.gif"    |
#      | "image.tiff"   |
#      | "image.ico"    |
#      | "image.svg"    |
#      | "image.webp"   |
#      | "audio.mp3"    |
#      | "audio.wav"    |
#      | "audio.ogg"    |
#      | "video.avi"    |
#      | "video.mov"    |
#      | "video.mp4"    |
#      | "video.ogg"    |
#      | "video.wmv"    |
#      | "video.webm"   |
#      | "other.csv"    |
#      | "other.json"   |
#      | "other.xml"    |
#      | "other.html"   |
#      | "other.zip"    |
