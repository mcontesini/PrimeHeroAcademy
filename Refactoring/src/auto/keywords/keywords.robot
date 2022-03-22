*** Settings ***
Resource    ../../config/package.robot

*** Keywords ***
Acessar a página home do site Automation Practice
    Go To    ${URL}
    Title Should Be    ${TITULO_HOMEPAGE}

Digitar o nome do produto "${PRODUTO}" no campo de pesquisa
    Input Text    ${CAIXA_PESQUISA}    ${PRODUTO}
    Capture Page Screenshot

Digitar um produto inexistente no campo de pesquisa
    ${NOME_INEXISTENTE}=    FakerLibrary.Name    
    Input Text    ${CAIXA_PESQUISA}   ${NOME_INEXISTENTE}
    Set Test Variable    ${NOME_INEXISTENTE}

Clicar no botão pesquisar
    Click Element    ${BOTAO_PESQUISA}
    Capture Page Screenshot

Conferir se o "${PRODUTO}" foi listado no site 
    Element Text Should Be    ${TITULO_PRODUTO}    ${PRODUTO}

Conferir mensagem "${ERRO}"
    Element Text Should Be    ${RESULTADO}    ${ERRO}

Conferir erro com produto aleatorio    
    Element Text Should Be    ${RESULTADO}    No results were found for your search "${NOME_INEXISTENTE}"
    Log To Console    O nome aleatorio gerado foi: ${NOME_INEXISTENTE}

Passar o mouse por cima da categoria "Women" no menu principal superior de categorias
    Mouse Over    ${BOTAO_WOMEN}    
  
Clicar na sub-categoria "Summer Dresses"
    Click Element    ${BOTAO_SUMMER_DRESSES}

Conferir se os produtos da sub-categoria "${SUMMER_DRESSES}" foram mostrados na página
   ${COUNT}    Get Element Count    ${TITULO_PRODUTO_2}
    Should Be True    ${COUNT} > 0
    Capture Page Screenshot

Clicar em "Sign in"
    Click Element    ${BOTAO_LOGIN}

Informar um e-mail válido
    ${E-MAIL}=    FakerLibrary.Email    
    Input Text    ${CAMPO_EMAIL}   ${E-MAIL}
    Set Test Variable    ${E-MAIL}

Clicar em "Create an account"
    Click Element    ${BOTAO_CRIAR_CONTA}

Preencher os dados obrigatórios
    Set Selenium Timeout    60
    Wait Until Element Is Visible    ${FIRST_NAME}
    ${NOME}=    FakerLibrary.Name    
    Input Text    ${FIRST_NAME}   ${NOME}
    Set Test Variable    ${NOME}

    ${SOBRENOME}=    FakerLibrary.Last Name    
    Input Text    ${LAST_NAME}   ${SOBRENOME}
    Set Test Variable    ${SOBRENOME}
    
    ${ENDEREÇO}=    FakerLibrary.Address    
    Input Text    ${ADDRESS}   ${ENDEREÇO}
    Set Test Variable    ${ENDEREÇO}

    ${CIDADE}=    FakerLibrary.City    
    Input Text    ${CITY}   ${CIDADE}
    Set Test Variable    ${CIDADE}

        # Select From List By Value    id=id_state    2    Não funcionou
    Click Element    ${ESTADO} 

    ${CEP}=    FakerLibrary.Postalcode    
    Input Text    ${POSTAL_CODE}   ${CEP}
    Set Test Variable    ${CEP}
    
    # Select From List By Value    ${PAIS}    2    Não Funionou
    Click Element    ${PAIS}
    
    Input Text    ${PHONE}   011999994444
   
   ${ENDEREÇO}=    FakerLibrary.Address    
    Input Text    ${ADDRESS}   ${ENDEREÇO}
    Set Test Variable    ${ENDEREÇO}
    Capture Page Screenshot

    ${SENHA}=    FakerLibrary.Password    
    Input Text    ${PASSWORD}   ${SENHA}
    Set Test Variable    ${SENHA}
Submeter cadastro
    Capture Page Screenshot
    Click Element    ${BOTAO_REGISTRAR}

Conferir se o cadastro foi efetuado com sucesso
    Element Text Should Be    ${MY_ACCOUNT}    MY ACCOUNT
    Capture Page Screenshot