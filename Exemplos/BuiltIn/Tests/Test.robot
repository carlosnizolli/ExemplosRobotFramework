***Settings***
Documentation      O propósito desta suite é mostrar um exemplo simples
...                utilizando a kw da BuiltIn Run Keyword If
Resource          ../Resource/Resource.robot

***Test Cases***
CT01 - Verifica se é dia de happy hour
    [Documentation]    Teste usando Run Keyword IF
    ...                Log To Console
    ...                Set Variable
    ...                Teste exibe no console se é dia de happy hour ou não
    Pega a data atual
    Verifica se é dia de happy hour