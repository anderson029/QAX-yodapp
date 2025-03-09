*** Settings ***
Resource    ../resources/base.resource

Task Setup    Start session
Task Teardown    Close session

*** Test Cases ***
Deve pode remover o Darth Vader
  [Tags]    darth    smoke    swipe    
  
  Get started
  Navigate to    Star Wars
  Go to item    Lista    Lista 

  ${locations}    Get Element Location    xpath=//android.widget.TextView[@text="@darthvader"]/../../..//*[contains(@resource-id,"indicator")]

  ${start_x}    Set Variable    ${locations}[x]
  ${start_y}    Set Variable    ${locations}[y]
  ${offset_x}   Evaluate    ${locations}[x] - 650
  ${offset_y}   Set Variable    ${locations}[y]

  Swipe    ${start_x}    ${start_y}    ${offset_x}    ${offset_y}    1000

  Click Element    id=com.qaxperience.yodapp:id/btnRemove

  Wait Until Page Does Not Contain    Darth Vader