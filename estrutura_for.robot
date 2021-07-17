*** Settings ***
Library    DebugLibrary

*** Test Cases ***
Cenário: Contar números
    FOR com RANGE


Cenário: Percorrer itens de uma lista
    @{FRUTAS}    Create List    morango    banana    maça    tomate
    FOR com lista    @{FRUTAS}

Cenario Impar e par
    @{NUMEROS}    Create List    1    2    3    4    5    6    7    8    9    10
    Imprime impar ou par    @{NUMEROS}
    
*** Keywords ***
FOR com RANGE
	FOR    ${count}     IN RANGE     0    10
		Log To Console     ${count} 
	END


FOR com lista
	[Arguments]    @{FRUTAS}
	FOR   ${fruta}    IN      @{FRUTAS}
		Log      ${fruta} 
	END

Imprime impar ou par
    [Arguments]    @{LISTA}
    FOR   ${NUMERO}    IN      @{LISTA}
		${resultado}    Evaluate    ${NUMERO}%2
        IF    "${resultado}" == "0" 
            Log To Console    Número ${NUMERO} é PAR
        ELSE
            Log To Console      Número ${NUMERO} é IMPAR   no_newline=false
        END
	END 