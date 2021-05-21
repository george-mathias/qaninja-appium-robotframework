*** Settings ***
Documentation    page drag and drop tests

Resource         ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

*** Test Cases ***
Deve remomver o Capitão América
    Go To Avengers List

    Drag And Drop        io.qaninja.android.twp:id/drag_handle    3    0
    