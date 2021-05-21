*** Settings ***
Resource          ../resources/base.robot

Test Setup        Open Session
Test Teardown     Close Session

*** Test Cases ***
Deve abrir a tela principal
    Wait Until Page Contains    Training Wheels Protocol    5
    Wait Until Page Contains    Mobile Version