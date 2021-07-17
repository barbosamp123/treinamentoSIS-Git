*** Test Case ***
Realizar Soma de dois numeros
    ${RESULTADO}    Somar numeros        1    2
    Log To Console    ${RESULTADO}

*** Keywords ***
Somar numeros
    [Arguments]    ${NUM_A}    ${NUM_B}
    ${SOMA}    Evaluate    ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}
