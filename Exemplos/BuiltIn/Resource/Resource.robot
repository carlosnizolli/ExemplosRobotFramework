***Settings***
Library            DateTime

***Variable***
&{MESES_DIAS}     1=31    2=28    3=31    4=30    5=31    6=30    7=31    8=31    9=30    10=31    11=30    12=31
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
    [Documentation]    Exibe no console que é sexta
    Log To Console    É Sexta Feira!!! Dia de Happy Hour

Pega o mês Atual
    [Documentation]    Pega o mês atual e exibe no console e no log    
    ${mes}=        Get Time    month
    Set Suite Variable    ${mes}
    

Exibe mês numérico no log e nome no console    
    &{Dictionary} =    Create Dictionary    1=Janeiro    2=Fevereiro    3=Março    4=Abril    5=Maio    6=Junho    7=Julho    8=Agosto    9=Setembro    10=Outubro    11=Novembro    12=Dezembro
    Log To Console    O mês atual é: ${Dictionary}[${mes}]

Verifica se mês atual é Fevereiro
    Run Keyword If    ${mes}==2
    ...  Run Keywords
    ...     Log To console        Mês atual é Fevereiro    AND
    ...     Verifica se ano é bissesto
    ...  ELSE
    ...      Log To Console        Mês atual não é Fevereiro   


Verifica se ano é bissesto
    ${year} =        Get Time    year
    ${bissesto} =       Evaluate    ${year} % 4 == 0 and (${year} % 100 != 0 or ${year} % 400 == 0)
    Log To Console    Ano é bissesto
    Set Suite Variable    ${bissesto} 

Exibe a quantidade de dias no console
    Log   ${bissesto}
    Run Keyword If    ${mes}==2 and ${bissesto} is ${TRUE}
    ...     Exibe quantidade de dias de fevereiro bissesto     
     ...  ELSE
    ...    Log To Console    Quantidade de dias do mês atual é ${MESES_DIAS}[${mes}]         

Exibe quantidade de dias de fevereiro bissesto  
    ${Qtdade} =     Evaluate        ${MESES_DIAS}[${mes}]+1
    Log To Console    Quantidade de dias do mês atual em ano bissesto é ${Qtdade}

Cria variável bissesto
    Set Suite Variable    ${bissesto}     ${FALSE}  