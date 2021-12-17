***Settings***
Library            DateTime


***Variable***


***Keywords***
Pega a data atual
    ${Date} =	Get Current Date
    ${Day} =    Convert Date    ${Date}    result_format=%a
    Set Test Variable    ${Day}

Verifica se é dia de happy hour    
    Run Keyword If    '${Day}'=='Fri'
    ...    Log To Console    É Sexta Feira!!! Dia de Happy Hour 
    ...  ELSE IF    '${Day}'=='Thu'
    ...    Log To Console    Falta Apenas um dia!!!
    ...  ELSE
    ...    Log To Console    Ainda não é Sexta