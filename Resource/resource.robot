*** Settings ***
Library        SeleniumLibrary



*** Variables ***
${URL}                                https://tst01-produtocliente.bancorbras.com.br/
${BROWSER}                            Chrome

${MENU_DASHBBOARD}                        //span[normalize-space()='Dashboard']
${MENU_GERENCIAR_P}                   //span[normalize-space()='Gerenciar Produtos']
${MENU_TIPOS_DESPESAS}                //span[normalize-space()='Tipos de Despesa']    
${MENU_LISTA_PREÇOS}                  //span[normalize-space()='Lista de Preços']
${MENU_CANAI_VENDAS}                  //span[normalize-space()='Canais de Venda']
${MENU_POLITICAS_VENDAS}              //span[normalize-space()='Política de Vendas']

${BOTÃO_NOVO}                         //a[normalize-space()='Novo']

${PRODUTO_ID}                         //input[@id='produtoCarenciaId']
${09}                                 09
${DESCRIÇAO}                          //input[@id='descricao']
${TESTE-AUTOMAÇÃO}                    TESTE AUTOMAÇÃO
${PERIODO_UTILIZAÇAO}                 //input[@id='periodoUtilizacao']
${NOME}                               //input[@id='nome']
${TESTE}                              TESTE ANDERSON
${DIARIAS}                            //input[@id='diarias']
${4}                                  4
${ESTOQUE}                            //input[@id='estoque']
${VIRADA_PERIODO}                     //input[@id='viradaPeriodoUtilizacao']
${PARCELAS}                           //input[@id='parcelasTm']   
${10}                                 10
${TIPO_DURAÇÃO}                       //input[@id='tipoDuracao'] 
${PERIODOUTILIZAÇÃO}                  PERIODO UTILIZAÇÃO
${PERMITE_CON.DIARIAS}                //input[@id='permiteConversaoDiarias']
${ATIVO}                              //input[@id='ativo']
${CATEGORIA_IG}                       categoriaId
${TIPO_CORANÇA}                       //input[@id='tipoCobranca']
${DESPESAS_ADICIONAIS}                DESPESAS ADICIONAIS
${FINALIDADE}                         //input[@id='finalidade']
${DUPLO}                              VENDA
${INSERIR_N.TIPO}                     //a[normalize-space()='Inserir NivelTipo']       
${NIVEL_UTILIZAÇÃO}                   //select[@id='nivelUtilizacaoId']
${TIPO}                               //select[@id='tipoId']

${SALVAR_PRODUTO}                     //button[normalize-space()='Salvar Produto']                             
${SIM_PROSSEGUIR}                    //button[normalize-space()='Sim, quero prosseguir!']

${PESQUISAR_REGISTROS}               //input[@id='searchText']

${TESTE_ANDERSON}                    //td[normalize-space()='TESTE ANDERSON']

${EXCLUIR_REGISTRO}                  //button[normalize-space()='Excluir']

${SIM_EXCLUIR}                        //button[normalize-space()='Sim, quero excluir!']

*** Keywords ***
Abrir o Navegador
    Open Browser                      ${URL}        ${BROWSER}
    Maximize Browser Window

Fechar o Navegador
    Close Browser


Acessar a página home do site
    Title Should Be                   Bancorbrás :: Produto & Cliente
    Sleep                             time_=2

Menu Gerenciar Produtos
    Wait Until Element Is Visible     locator=${MENU_GERENCIAR_P}          timeout=10
    Click Element                     locator=${MENU_GERENCIAR_P}
    Sleep                             time_=2

Menu Tipos de Despesa
    Wait Until Element Is Visible     locator=${MENU_TIPOS_DESPESAS}       timeout=10
    Click Element                     locator=${MENU_TIPOS_DESPESAS}
    Sleep                             time_=2

Menu Lista de Preços
    Wait Until Element Is Visible     locator=${MENU_LISTA_PREÇOS}         timeout=10
    Click Element                     locator=${MENU_LISTA_PREÇOS} 
    Sleep                             time_=2

Menu Canais de Venda
    Wait Until Element Is Visible     locator=${MENU_CANAI_VENDAS}         timeout=10
    Click Element                     locator=${MENU_CANAI_VENDAS} 
    Sleep                             time_=2
Menu Política de Vendas
    Wait Until Element Is Visible     locator=${MENU_POLITICAS_VENDAS}     timeout=10
    Click Element                     locator=${MENU_POLITICAS_VENDAS} 
    Sleep                             time_=2

Menu Dashboard
    Wait Until Element Is Visible     locator=${MENU_DASHBBOARD}    timeout=10
    Click Element                     locator=${MENU_DASHBBOARD}
    Sleep                             time_=2

Novo Produto
    Wait Until Element Is Visible     locator=${BOTÃO_NOVO}    timeout=10
    Click Element                     locator=${BOTÃO_NOVO}
    Sleep                             time_=2    

Produto Carência id
    Wait Until Element Is Visible     locator=${PRODUTO_ID}    timeout=10
    Input Text                        locator=${PRODUTO_ID}     text=${09} 
    Sleep                             time_=2

Descrição
    Wait Until Element Is Visible     locator=${DESCRIÇAO}     timeout=10
    Input Text                        locator=${DESCRIÇAO}     text=${TESTE-AUTOMAÇÃO}
    Sleep                             time_=2

Periodo da Utilização
    Wait Until Element Is Visible     locator=${PERIODO_UTILIZAÇAO}    timeout=10
    Input Text                        locator=${PERIODO_UTILIZAÇAO}    text=${09}   
    Sleep                             time_=2

Nome
    Wait Until Element Is Visible     locator=${NOME}     timeout=10
    Input Text                        locator=${NOME}     text=${TESTE}
    Sleep                             time_=2

Diárias    
    Wait Until Element Is Visible     locator=${DIARIAS}    timeout=10
    Input Text                        locator=${DIARIAS}    text=${4} 
    Sleep                             time_=2

Estoque
    Wait Until Element Is Visible     locator=${ESTOQUE}    timeout=10
    Input Text                        locator=${ESTOQUE}    text=${4} 
    Sleep                             time_=2

Virada Periodo Utilizacao
    Wait Until Element Is Visible     locator=${VIRADA_PERIODO}    timeout=10
    Click Element                     locator=${VIRADA_PERIODO}
    Sleep                             time_=2

Parcelas
    Wait Until Element Is Visible     locator=${PARCELAS}    timeout=10
    Input Text                        locator=${PARCELAS}    text=${10}  
    Sleep                             time_=2

Tipo Duração
    Wait Until Element Is Visible     locator=${TIPO_DURAÇÃO}      timeout=10
    Input Text                        locator=${TIPO_DURAÇÃO}      text=${PERIODOUTILIZAÇÃO}
    Sleep                             time_=2

Permite Conversão Diárias
    Wait Until Element Is Visible     locator=${PERMITE_CON.DIARIAS}    timeout=10
    Click Element                     locator=${PERMITE_CON.DIARIAS}
    Sleep                             time_=2

Ativo
    Wait Until Element Is Visible     locator=${ATIVO}    timeout=10
    Click Element                     locator=${ATIVO}
    Sleep                             time_=2

Categoria ID
    Wait Until Element Is Visible     locator=${CATEGORIA_IG}
    Select From List By Value         ${CATEGORIA_IG}        1

Tipo de Cobrança
    Wait Until Element Is Visible     locator=${TIPO_CORANÇA}     timeout=10
    Input Text                        locator=${TIPO_CORANÇA}     text=${DESPESAS_ADICIONAIS}
    Sleep                             time_=2

Finalidade
    Wait Until Element Is Visible     locator=${FINALIDADE}     timeout=10
    Input Text                        locator=${FINALIDADE}     text=${DUPLO}  
    Sleep                             time_=2

Inserir Nível 
    Wait Until Element Is Visible     locator=${INSERIR_N.TIPO}     timeout=10
    Click Element                     locator=${INSERIR_N.TIPO} 
    Sleep                             time_=2

Nível de Utilização
    Wait Until Element Is Visible     locator=${NIVEL_UTILIZAÇÃO}     timeout=10
    Select From List By Value         ${NIVEL_UTILIZAÇÃO}        2

Tipo
    Wait Until Element Is Visible     locator=${TIPO}    timeout=10
    Select From List By Value         ${TIPO}      2

Salvar Produto
    Wait Until Element Is Visible     locator=${SALVAR_PRODUTO}     timeout=10
    Click Element                     locator=${SALVAR_PRODUTO} 
    Sleep                             time_=2

Sim Prosseguir
    Wait Until Element Is Visible     locator=${SIM_PROSSEGUIR}      timeout=10
    Click Element                     locator=${SIM_PROSSEGUIR}  
    Sleep                             time_=2


Pesquisar Registros
    Wait Until Element Is Visible     locator=${PESQUISAR_REGISTROS}     timeout=10
    Input Text                        locator=${PESQUISAR_REGISTROS}     text=${TESTE}
    Sleep                             time_=2

Teste Anderson
    Wait Until Element Is Visible     locator=${TESTE_ANDERSON}     timeout=10
    Click Element                     locator=${TESTE_ANDERSON} 
    Sleep                             time_=2

Excluir Registro
    Wait Until Element Is Visible     locator=${EXCLUIR_REGISTRO}     timeout=10
    Click Element                     locator=${EXCLUIR_REGISTRO}
    Sleep                             time_=2

Sim Excluir
    Wait Until Element Is Visible     locator=${SIM_EXCLUIR}        timeout=10
    Click Element                     locator=${SIM_EXCLUIR}   
    Sleep                             time_=2





COLA
    Wait Until Element Is Visible     locator=    timeout=
    Click Element                     locator=
    Sleep                             time=2

    Wait Until Element Is Visible     locator=    timeout=10
    Input Text                        locator=    text=123456
    Sleep                             time=2

    Wait Until Element Is Visible     locator=    timeout=10
    Click Button                      locator=
    Sleep                             time=2


    Wait Until Element Is Visible     locator=    timeout=10
    Select From List By Value         ${EX.varialvel}          EX.Valor
    Sleep                             time=2

    Sleep                             time_=2

    Press Keys                          ${EX.varialvel}     ENTER

