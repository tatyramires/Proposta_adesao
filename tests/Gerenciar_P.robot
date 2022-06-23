*** Settings ***
Library              SeleniumLibrary
Resource             ../Resource/resource.robot
Test Setup           Abrir o Navegador
Test Teardown        Fechar o Navegador

*** Test Cases ***

Deve Gerar um Novo Produto
    [Documentation]    NOVO PRODUTO_ID
    [TAGS]             NOVO 
    Acessar a página home do site
    Menu Gerenciar Produtos
    Novo Produto
    Produto Carência id
    Descrição
    Periodo da Utilização
    Nome
    Diárias
    Estoque
    Virada Periodo Utilizacao
    Parcelas
    Tipo Duração
    Permite Conversão Diárias
    Ativo
    Categoria ID
    Tipo de Cobrança
    Finalidade
    Inserir Nível
    Nível de Utilização
    Tipo
    Salvar Produto
    Sim Prosseguir

Deve Excuir um Produto
    [Documentation]    
    Acessar a página home do site
    Menu Gerenciar Produtos
    Pesquisar Registros
    Teste Anderson
    Excluir Registro
    Sim Excluir