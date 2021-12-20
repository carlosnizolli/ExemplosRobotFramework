***Settings***
Documentation      O propósito desta suite é mostrar um exemplo simples
...                utilizando a kw da BuiltIn Run Keyword If
Resource          ../Resource/Resource.robot

***Test Cases***
CT01 - Verifica se é dia de happy hour
    [Documentation]    Teste exibe no console se é dia de happy hour ou não
    ...                Teste usando Run Keyword IF
    ...                Log To Console
    ...                Set Variable          
    Pega a data atual
    Verifica se é dia de happy hour

CT02 - Exibe o mês atual
    [Documentation]    Exibe o mês atual no console
    ...                Get Time
    ...                Create Dictionary
    ...                Teste exibe no console o mês atual
    Pega o mês Atual
    Exibe mês numérico no log e nome no console

CT03 - Verifica a quantidade de dias do mês atual
    [Documentation]    Exibe no console a quantidade de dias
    ...                Get Time
    ...                Create Dictionary
    ...                Teste exibe no console o mês atual
    [SETUP]    Cria variável bissesto
    Verifica se mês atual é Fevereiro
    Exibe a quantidade de dias no console