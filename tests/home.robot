*** Settings ***
Resource    ../resources/base.resource

Task Setup    Start session
Task Teardown    Close session

*** Test Cases ***

Deve abrir a tela principal
  [Tags]    home    smoke

  Wait Until Page Contains    Yodapp
  Wait Until Page Contains    Mobile Training
  Wait Until Page Contains    by Papito  