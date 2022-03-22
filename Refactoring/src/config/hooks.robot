*** Settings ***
Resource    package.robot

*** Keywords ***
Abrir o navegador    
    Open Browser    ${URL}    ${BROWSER}
    # ou Open Browser    ${EMPTY}    ${BROWSER}
    
Fechar o navegador
    Close Browser
