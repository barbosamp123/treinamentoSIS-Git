*** Variable ***
${NOME}    Paulo
&{ANIMAL}    especie=Réptil    nome=Lagarto    quantidade=2 
@{COMPRAS}    Refrigerante    chocolate    batata frita    salgadinho    danone    sucrilhos    sorvete

*** Test Cases ***
Variável Simples
    Log TO Console    ${NOME}
    Log    ${NOME}

Variável Dicionario
    Log To Console    ${ANIMAL.especie}
    Log     ${ANIMAL.nome}

Variável Lista
    Log To Console    ${COMPRAS}
    Log  ${COMPRAS[6]}

Operações 
    ${resultado}=    Evaluate    2+2
    Log    ${resultado}
    ${resultado}=    Evaluate    2-2
    Log    ${resultado}
    ${resultado}=    Evaluate    2*2
    Log    ${resultado}
    ${resultado}=    Evaluate    2/2
    Log    ${resultado}