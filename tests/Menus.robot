*** Settings ***
Library              SeleniumLibrary
Resource             ../Resource/resource.robot
Test Setup           Abrir o Navegador
#Test Teardown        Fechar o Navegador

*** Test Cases ***

Deve Abrir Todos os Menus
    [Documentation]    Menus
    Acessar a página home do site
    Menu Gerenciar Produtos
    Menu Tipos de Despesa
    Menu Lista de Preços
    Menu Canais de Venda
    Menu Política de Vendas
    Menu Dashboard
