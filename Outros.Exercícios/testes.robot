*** Settings ***
Library    String       
*** Variables ***
@{FRUTAS}    maça    banana    abacaxi    manga    uva    melão
&{PESSOA}    nome=Emily    idade=33    altura=1,63    peso=67    nacionalidade=Brasileira    cor=Parda
@{PAISES}    Brasil    Japão    Alemanha    Canadá    México
*** Test Cases ***
Lista FRUTAS
    Log To Console    ${FRUTAS[0]}
    Log To Console    ${FRUTAS[1]}
    Log To Console    ${FRUTAS[2]}
    Log To Console    ${FRUTAS[3]}
    Log To Console    ${FRUTAS[4]}
    Log To Console    ${FRUTAS[5]}

Dicionario PESSOA
    Log To Console    ${PESSOA.nome}
    Log To Console    ${PESSOA.idade}
    Log To Console    ${PESSOA.altura}
    Log To Console    ${PESSOA.peso}
    Log To Console    ${PESSOA.nacionalidade}
    Log    ${PESSOA.cor}

Operações
    ${RESULTADO}    Soma "2" e "2"
    Log To Console    ${RESULTADO}

Teste e-mail
    ${NOME_E-MAIL}    cria e-mail    emily    contesini    33
    Log To Console    ${NOME_E-MAIL}

Teste e-mail 2
    ${EMAIL}    Criar e-mail "emily" e "contesini" e "33"
    Log To Console    ${EMAIL}

Teste Numeros
    Lista Numeros  
Teste Paises  
    Lista Paises
Teste IF e ELSE    
    Lista Numeros if e else

*** Keywords ***
Soma "${NUM_1}" e "${NUM_2}"
    ${RESULTADO}    Evaluate    ${NUM_1} + ${NUM_2}
    [Return]    ${RESULTADO}
    
cria e-mail
    [Arguments]    ${NOME}    ${SOBRENOME}    ${IDADE}
    ${EMAIL}    Set Variable    ${NOME}_${SOBRENOME}_${IDADE}@robot.com 
    [Return]    ${EMAIL}    
Criar e-mail "${NOME}" e "${SOBRENOME}" e "${IDADE}"
    ${EMAIL}    Set Variable    ${NOME}${SOBRENOME}${IDADE}@robot.com 
    [Return]    ${EMAIL}    

Lista Numeros
    FOR    ${NUM}    IN RANGE    0    11
        Log To Console    Estou no número ${NUM}
    END

Lista Paises 
    FOR    ${PAIS}    IN    @{PAISES}
        Log To Console    ${PAIS}
    END

Lista Numeros if e else
    FOR    ${NUM}    IN RANGE    0    11
        
        IF    ${NUM} == 5
            Log To Console    Estou no número 5
        ELSE IF    ${NUM} == 8
            Log To Console    Estou no número 8   
        END
    END