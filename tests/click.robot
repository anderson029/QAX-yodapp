*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Deve realizar um clique simples
  Open Application    http://localhost:4723/wd/hub
  ...    platformName=Android
  ...    deviceName=Android Emulator
  ...    automationName=UIAutomator2
  ...    app=${EXECDIR}/app/yodapp-beta.apk
  ...    udid=emulator-5554
  ...    autoGrantPermissions=true 

  Wait Until Page Contains    Yodapp
  Wait Until Page Contains    Mobile Training
  Wait Until Page Contains    by Papito 

  Click Text    QAX 

  Close Application