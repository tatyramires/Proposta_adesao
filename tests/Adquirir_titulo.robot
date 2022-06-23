*** Settings ***
Library              SeleniumLibrary
Resource             ../Resource/resource.robot
Test Setup           Abrir o Navegador
#Test Teardown        Fechar o Navegador

*** Test Cases ***

Deve Adquirir um Título
    [Documentation]   TITULO 
    Acessar a página home do site
    Nome do Usuário
    E-mail do Usuário
    Telefone do Usuário
    Recaptcha
    Continuar
    Quantas noites
    Duplo Executivo
    Comprar
    Para Min
    Data de Nascimeto
    CPF
    
