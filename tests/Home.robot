*** Settings ***
Library              SeleniumLibrary
Resource             ../Resource/resource.robot
Test Setup           Abrir o Navegador
#Test Teardown        Fechar o Navegador

*** Test Cases ***

Deve Abrir Todos os Menus
    [Documentation]    HOME
    Acessar a página home do site
