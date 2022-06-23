*** Settings ***
Library        SeleniumLibrary

Library        String

*** Variables ***
${URL}                                http://meuclube-ecommerce-tst.bancorbras.com.br/cbtur
${BROWSER}                            Chrome

${NOME_CLENTE}                        //input[contains(@formcontrolname,'nomeCtrl')]
${NOME_GERAL}                         Teste Automação

${E-MAIL_CLIENTE}                     //input[contains(@type,'email')]
${E-MAIL_GERAL}                       teste09@gmail.com

${TELEFONE_CLIENTE}                   //input[contains(@type,'tel')]
${TELEFONE_GERAL}                     11981003835

${IFRAME}                             //iframe[@title='reCAPTCHA']
${RECAPTCHA}                          recaptcha-anchor

${CONTINUAR}                          //button[@color='yellow'][contains(.,'Continuar')]

${7_NOITES}                           //label[normalize-space()='7 noites']

${DUPLO_EXECUTIVO}                    //select[@id='DuploExecutivo']

${COMPRAR}                            //button[@color='yellow'][contains(.,'Comprar')]

${PRA_MIM}                            //mat-card-content[@class='mat-card-content'][contains(.,'Para mim')]

${DATA_NASCIMENTO}                    //input[contains(@readonly,'true')]
${DATA_NASCIMENTO_16}                 //div[@class='mat-calendar-body-cell-content mat-focus-indicator'][contains(.,'16')]

${CPF}                                //input[contains(@formcontrolname,'cpf')]

${RG}                                 //input[@id='mat-input-14']
${ORGÃO_EXPEDIDOR}                    //input[contains(@formcontrolname,'orgaoExpedidor')]


*** Keywords ***
Abrir o Navegador
    Open Browser                      ${URL}        ${BROWSER}
    Maximize Browser Window

Fechar o Navegador
    Close Browser


Acessar a página home do site
    Title Should Be                     Bancorbras
    Sleep                               time_=2

Nome do Usuário 
    Wait Until Element Is Visible       ${NOME_CLENTE}          10
    Input Text                          ${NOME_CLENTE}          ${NOME_GERAL}   
    Sleep                               2

E-mail do Usuário
    Wait Until Element Is Visible       ${E-MAIL_CLIENTE}       10
    Input Text                          ${E-MAIL_CLIENTE}       ${E-MAIL_GERAL} 
    Sleep                               2

Telefone do Usuário
    Wait Until Element Is Visible       ${TELEFONE_CLIENTE}     10
    Input Text                          ${TELEFONE_CLIENTE}     ${TELEFONE_GERAL} 
    Sleep                               2

Recaptcha
    Select Frame                        ${IFRAME}   
    Wait Until Element Is Visible       ${RECAPTCHA}        10
    Click Element                       ${RECAPTCHA}
    Sleep                               10

Continuar
    Unselect Frame
    Wait Until Element Is Visible       ${CONTINUAR}       30
    Click Element                       ${CONTINUAR}   
    Sleep                               2

Quantas noites
    Wait Until Element Is Visible       ${7_NOITES}       10
    Click Element                       ${7_NOITES}   
    Sleep                               2
Duplo Executivo
    Wait Until Element Is Visible       ${DUPLO_EXECUTIVO}        10
    Select From List By Value           ${DUPLO_EXECUTIVO}        1

Comprar
    Wait Until Element Is Visible       ${COMPRAR}       10
    Click Element                       ${COMPRAR}   
    Sleep                               2

Para Min
    Wait Until Element Is Visible       ${PRA_MIM}        10
    Click Element                       ${PRA_MIM}    
    Sleep                               2

Data de Nascimeto
    Wait Until Element Is Visible       ${DATA_NASCIMENTO}       10
    Click Element                       ${DATA_NASCIMENTO}   
    Sleep                               2

    Wait Until Element Is Visible       ${DATA_NASCIMENTO_16}       10
    Click Element                       ${DATA_NASCIMENTO_16}   
    Sleep                               2

CPF
    Wait Until Element Is Visible       ${CPF}   10
    ${11}                               generate random string  11  [NUMBERS]
    Input Text                          ${CPF}            ${11} 
    Sleep                               2
RG
    Wait Until Element Is Visible       ${RG}   10
    ${9}                               generate random string  9  [NUMBERS]
    Input Text                          ${RG}            ${9} 
    Sleep                               2

Orgão Expedidor
    Wait Until Element Is Visible       ${ORGÃO_EXPEDIDOR}     10
    Input Text                          ${ORGÃO_EXPEDIDOR}     SSP 
    Sleep                               2
COLA  
    Wait Until Element Is Visible       ${IFRAME}       10
    Click Element                       ${IFRAME}   
    Sleep                               2
    
    Wait Until Element Is Visible       ${IFRAME}   10
    Input Text                          ${IFRAME}   ${IFRAME} 
    Sleep                               2

    Wait Until Element Is Visible     locator=    timeout=10
    Click Button                      locator=

    Sleep                             time_=2

    Select frame                      locator=
    Wait Until Element Is Visible     locator=
    Input text                        locator=  text=$ 