*** Test Cases ***
Argumentos e retornos
    ${resultado}    Somar dois números    30    20
    Log To Console    ${resultado}

Argumentos Embutidos
	${RESULTADO}   Somar os números "1" e "15"
	Log To Console    ${RESULTADO}

Teste de nome
    ${nome}    Cria Sobrenome    Marcos
	Log To Console    ${nome}
    ${nome}    Cria Sobrenome    Jessica
	Log To Console    ${nome}
    
*** Keywords ***
Somar dois números
    [Arguments]  ${NUM_A}    ${NUM_B}
	${SOMA}	Evaluate  ${NUM_A}+${NUM_B}
	[Return] 	${SOMA}

Somar os números "${NUM_A}" e "${NUM_B}"
	${SOMA}      	Evaluate       ${NUM_A}+${NUM_B}
	[Return] 	${SOMA}

Cria Sobrenome
    [Arguments]    ${FIRST_NAME}
	[Return]    ${FIRST_NAME} Barbosa
