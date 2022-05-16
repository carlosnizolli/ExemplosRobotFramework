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
    [Documentation]    Cria dicionário e exibe mês atual   
    &{Dictionary} =    Create Dictionary    01=Janeiro    02=Fevereiro    03=Março    04=Abril    05=Maio    06=Junho    07=Julho    08=Agosto    09=Setembro    10=Outubro    11=Novembro    12=Dezembro    
    Log    ${Dictionary}[${mes}]
    Log To Console    O mês atual é: ${Dictionary}[${mes}]

Verifica se mês atual é Fevereiro
    [Documentation]    Faz verificações devido Fevereiro possuir mais dias em ano bissesto
    Run Keyword If    ${mes}==2
    ...  Run Keywords
    ...     Log To console        Mês atual é Fevereiro    AND
    ...     Verifica se ano é bissesto
    ...  ELSE
    ...      Log To Console        Mês atual não é Fevereiro
Verifica se ano é bissesto
    [Documentation]    Utiliza Evaluate para calcular em python se ano é bissesto
    ${year} =        Get Time    year
    ${bissesto} =       Evaluate    ${year} % 4 == 0 and (${year} % 100 != 0 or ${year} % 400 == 0)
    Log To Console    Ano é bissesto
    Set Suite Variable    ${bissesto} 

Exibe a quantidade de dias no console
    [Documentation]    Pega quantidade de dias no dicionário global
    ...                exibe de acordo com o mês e ano
    Log   ${bissesto}
    Run Keyword If    ${mes}==2 and ${bissesto} is ${TRUE}
    ...     Exibe quantidade de dias de fevereiro bissesto     
     ...  ELSE
    ...    Log To Console    Quantidade de dias do mês atual é ${MESES_DIAS}[${mes}]         

Exibe quantidade de dias de fevereiro bissesto
    [Documentation]    Se for bissesto soma 1 dia no mês de fevereiro
    ${Qtdade} =     Evaluate        ${MESES_DIAS}[${mes}]+1
    Log To Console    Quantidade de dias do mês atual em ano bissesto é ${Qtdade}

Cria variável bissesto
    [Documentation]    Variável inicializada apenas para evitar problemas com as comparações
    Set Suite Variable    ${bissesto}     ${FALSE}  
