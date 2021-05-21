*** Settings ***
Documentation         aqui estão as KWs helpers
Resource              base.robot

*** Variables ***
${START}               COMEÇAR
${HAMBURGUER}          xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]
${NAV_VIEW}            id=io.qaninja.android.twp:id/navView

*** Keywords ***
Get Started
    Wait Until Page Contains    ${START}
    Click Text                  ${START}

Open Nav
    Wait Until Element Is Visible    ${HAMBURGUER}
    
    Click Element                    ${HAMBURGUER}
    Wait Until Element Is Visible    ${NAV_VIEW}

Go To Login Form
    Open Nav

    Click Text                  ${TEXT_FORMS}
    Wait Until Page Contains    ${TEXT_FORMS}

    Click Text    LOGIN
    Wait Until Page Contains    Fala QA, vamos testar o login?

Go To Radio Buttons
    Open Nav

    Click Text                  INPUTS
    Wait Until Page Contains    INPUTS

    Click Text                  BOTÕES DE RADIO
    Wait Until Page Contains    Escolha sua linguagem preferida
