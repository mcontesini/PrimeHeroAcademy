*** Settings ***
Resource    ../../src/config/package.robot

Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador

    
*** Test Cases ***
Caso de teste 1: Pesquisar produto existente
    [Tags]    @Teste1
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o "Blouse" foi listado no site

Caso de teste 2: Pesquisar produto não existente
    [Tags]    @Teste2
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "itemNãoExistente""
    
Caso de teste 3: Pesquisar produto inexistente
    [Tags]    @Teste3
    Acessar a página home do site Automation Practice
    Digitar um produto inexistente no campo de pesquisa
    Clicar no botão pesquisar
    Conferir erro com produto aleatorio

Caso de teste 4: Listar Produtos 
    [Tags]    @Teste4
    Acessar a página home do site Automation Practice
    Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Clicar na sub-categoria "Summer Dresses"
    Conferir se os produtos da sub-categoria "Summer Dres" foram mostrados na página

Caso de teste 5: Adicionar Cliente
    [Tags]    @Teste5
    Acessar a página home do site Automation Practice
    Clicar em "Sign in"
    Informar um e-mail válido
    Clicar em "Create an account"
    Preencher os dados obrigatórios
    Submeter cadastro
    Conferir se o cadastro foi efetuado com sucesso