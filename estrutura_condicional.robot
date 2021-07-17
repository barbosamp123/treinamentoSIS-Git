*** Test Case ***

Comparar Idade
    @{lista}    Create List    1    2    3    4    5    6    7    8    9    
    Condicional Simples  @{lista}




*** Keywords***

Condicional Simples
   [Arguments]  @{LISTA}

    FOR   ${NUMERO}    IN      @{LISTA}
        IF    "${NUMERO}" == "5" 
            Log To Console    Encontrei o ${NUMERO}
        ELSE IF    "${NUMERO}" == "8"
            Log To Console      Encontrei o ${NUMERO}
        ELSE   
            Log To Console    Não deu match!
        END
	END 