***Settings***
Resource          ../Resource/Resource.robot


***Test Cases***
CT01 - Teste dia de happy hour
    [Documentation]   Se a data for Sexta exibe no console que é dia de happy hour
    [tags]    case01
    Pega a data atual
    Verifica se é dia de happy hour