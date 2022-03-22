*** Settings ***
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador
Library    SeleniumLibrary
Library    FakerLibrary


*** Variables ***
${URL}    http://automationpractice.com/index.php    
${BROWSER}    Chrome
${RESULTADO}    xpath=//p[@class='alert alert-warning']    


*** Test Cases ***
Caso de teste 2: Pesquisar produto não existente
    [Tags]    @Teste2
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "itemNãoExistente" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir mensagem "No results were found for your search "itemNãoExistente""
    
Caso de teste 3: Pesquisar produto não existente
    [Tags]    @Teste3
    Acessar a página home do site Automation Practice
    Digitar um produto inexistente no campo de pesquisa
    Clicar no botão pesquisar
    Conferir erro com produto aleatorio

*** Keywords ***
Abrir o navegador    
    Open Browser    ${URL}    ${BROWSER}
    # ou Open Browser    ${EMPTY}    ${BROWSER}
    
Fechar o navegador
    Close Browser

Acessar a página home do site Automation Practice
    Title Should Be    My Store
Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    id=search_query_top    ${PRODUTO}

Digitar um produto inexistente no campo de pesquisa
    ${NOME_INEXISTENTE}=    FakerLibrary.Name    
    Input Text    name=search_query   ${NOME_INEXISTENTE}
    Set Test Variable    ${NOME_INEXISTENTE}
Clicar no botão pesquisar
    Click Element    name=submit_search

Conferir mensagem "${ERRO}"
    Element Text Should Be    ${RESULTADO}    ${ERRO}

Conferir erro com produto aleatorio    
    Element Text Should Be    xpath=//p[@class='alert alert-warning']    No results were found for your search "${NOME_INEXISTENTE}"
    Log To Console    O nome aleatorio gerado foi: ${NOME_INEXISTENTE}