*** Settings ***
Resource    ../resources/base.resource

*** Test Cases ***

Deve realizar um clique simples
  [Tags]    simple    smoke    click
  Start session
  Get started
  Navigate to     Clique em Botões
  Go to item      Clique simples    Botão clique simples       

  Click Text                    CLIQUE SIMPLES
  Wait Until Page Contains      Isso é um clique simples

  Close session

Deve realizar um clique longo
  [Tags]    long    smoke    click
  Start session
  Get started
  Navigate to    Clique em Botões
  Go to item    Clique longo    Botão clique longo

  ${locator}    Set Variable    id=com.qaxperience.yodapp:id/long_click

  # Obtém as coordenadas do elemento
  ${element_location}=   Get Element Location    ${locator}
  ${x}=    Set Variable    ${element_location}[x]
  ${y}=    Set Variable    ${element_location}[y]

  # Cria uma lista com as coordenadas
  @{positions}=    Create List    ${x}    ${y}

  Tap With Positions    ${1000}    ${positions}

  Wait Until Page Contains    Isso é um clique longo

  Close session