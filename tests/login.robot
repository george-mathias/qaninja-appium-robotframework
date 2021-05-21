*** Settings ***
Documentation        Tests login cases

Resource             ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

*** Variables ***
${TEXT_FORMS}        FORMS

*** Test Cases ***
Deve logar com sucesso
    Go To Login Form
    
    Input Text       id=io.qaninja.android.twp:id/etEmail         eu@papito.io
    Input Password   id=io.qaninja.android.twp:id/etPassword      qaninja
    Click Element    id=io.qaninja.android.twp:id/btnSubmit

    # Wait Until Element Is Visible    
    Wait Until Page Contains    Show! Suas credenciais são validas.
    
    Capture Page Screenshot
