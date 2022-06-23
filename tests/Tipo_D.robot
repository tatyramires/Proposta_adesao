*** Settings ***
Library              SeleniumLibrary
Resource             ../Resource/resource.robot
Test Setup           Abrir o Navegador
Test Teardown        Fechar o Navegador

*** Test Cases ***

Deve Gerar um Novo Produto
    [Documentation]    Menus
    Acessar a página home do site
    Menu Tipos de Despesa
    Novo Produto
    Nome
    Descrição
    