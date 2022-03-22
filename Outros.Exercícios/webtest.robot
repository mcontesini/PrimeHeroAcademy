*** Settings ***
Test Setup    Abrir o navegador
Test Teardown    Fechar o navegador
Library    SeleniumLibrary


*** Variables ***
${BROWSER}    Chrome
${URL}    http://automationpractice.com/index.php
${TITULO_PRODUTO}    /html/body/div[1]/div[2]/div/div[3]/div[2]/ul/li/div/div[2]/h5/a


*** Test Cases ***
Caso de teste 1: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão de pesquisa
    Conferir se o "Blouse" foi listado no site

*** Keywords ***
Abrir o navegador    
    Open Browser    ${URL}    ${BROWSER}
    # ou Open Browser    ${EMPTY}    ${BROWSER}
    
Fechar o navegador
    Close Browser

Acessar a página home do site Automation Practice
    Title Should Be    My Store

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Wait Until Element Is Visible  id=search_query_top  10s   
    Input Text    id=search_query_top    ${PRODUTO} 
    
Clicar no botão de pesquisa
    Click Element    xpath=//button[@name='submit_search']
    #ou Click Button    name=submit_search

Conferir se o ${PRODUTO} foi listado no site
    Element Text Should Be    ${TITULO_PRODUTO}    ${PRODUTO}
