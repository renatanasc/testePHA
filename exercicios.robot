*** Settings ***
Documentation    Neste aqrquivo estarão presentes todos os exercicios de IF e FOR.


*** Variable ***
${SIMPLES}
@{LISTA}
&{DICIONARIO}

*** Test Case ***
Contando de 0 a 9
    [Tags]  CONTAR
    Contar de 0 a 9

Contando a Lista de Frutas
    [Tags]  FRUTA
    Percorrer itens de uma lista

*** Keywords ***

Contar de 0 a 9
    FOR ${count} IN RANGE  0  9
        Log To Console  ${count}    
    END    

Percorrer itens de uma lista    
     @{FRUTAS}   Create List        Morango Banana  Abacaxi Uva Melância
    FOR ${FRUTA} IN @{FRUTAS}
        Log To Console  ${FRUTA}
    END    


#comentário