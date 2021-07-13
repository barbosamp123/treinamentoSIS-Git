*** Test Cases ***
Dicionario
    &{DADOS_PESSOAIS}   Create Dictionary 
    ...        notaA=5.5
    ...        notaB=5.4    
    ...        notaC=10    
    ...        nascimento=09/05/1994    
    ...        cidade=Barueri    
    ...        profissão=QA

    ${media}=      Evaluate   ${DADOS_PESSOAIS.notaA}+${DADOS_PESSOAIS.notaB}+${DADOS_PESSOAIS.notaC}/3
    Log To Console   ${media}

Lista
     @{FRUTAS}  Create List    abacaxi     laranja    morango    banana
     Log To Console       ${FRUTAS}
     Log To Console       ${FRUTAS[1]}

Média
    &{ALUNO}   Create Dictionary 
        ...        notaA=5.5
        ...        notaB=5.4    
        ...        notaC=10  
    ${media}=      Evaluate   ${ALUNO.notaA}+${ALUNO.notaB}+${ALUNO.notaC}/3
