*** Settings ***
Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Variables ***
# ${NOME}    Fernando Papito                        ## variável simples, recebe apenas um valor
# @{CARROS}    Civic    Fit    Fusion    Troller    ## lista de objetos
# &{CARRO}     nome=Civic    modelo=si    ano=2021  ## objeto com chave/valor separado por tab ou espaço duplo

${TOOLBAR_TITLE}    id=io.qaninja.android.twp:id/toolbarTitle

*** Test Cases ***
Deve acessar a tela Dialogs
    Open Nav
    
    Click Text                       DIALOGS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be           ${TOOLBAR_TITLE}    DIALOGS

Deve acessar a tela Forms
    Open Nav
    
    Click Text                       FORMS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be           ${TOOLBAR_TITLE}    FORMS

Deve acessar a tela vingadores
    Open Nav
    
    Click Text                       AVENGERS
    Wait Until Element Is Visible    ${TOOLBAR_TITLE}
    Element Text Should Be           ${TOOLBAR_TITLE}    AVENGERS
