***Settings***
Library            DateTime

***Variable***

***Keywords***
Pega a data atual
    [Documentation]    Pega a data atual e extrai o dia
    ${Date} =	Get Current Date
    ${Day} =    Convert Date    ${Date}    result_format=%a
    Set Test Variable    ${Day}

Verifica se é dia de happy hour
    [Documentation]    Verifica se o dia é Sexta e exibe no console
    Run Keyword If    '${Day}'=='Fri'
    ...    Exibe confirmação no Console
    ...  ELSE IF    '${Day}'=='Thu'
    ...    Log To Console    Falta Apenas um dia!!!
    ...  ELSE
    ...    Log To Console    Ainda não é Sexta

Exibe confirmação no Console
    Log To Console    É Sexta Feira!!! Dia de Happy Hour