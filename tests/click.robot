*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Test Cases ***

Deve realizar um clique simples
  Open Application    http://localhost:4723/wd/hub
  ...    platformName=Android
  ...    deviceName=Android Emulator
  ...    automationName=UIAutomator2
  ...    app=${EXECDIR}/app/yodapp-beta.apk
  ...    udid=emulator-5554
  ...    autoGrantPermissions=true 

  Wait Until Page Contains    ${START}    5
  Click Text    ${START}
  Close Application