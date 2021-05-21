*** Settings ***
Documentation    page click button tests

Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Deve realizar um clique simples
    Go To Short Click

    Click Element               id=io.qaninja.android.twp:id/short_click
    Wait Until Page Contains    Isso é um clique simples