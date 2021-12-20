# Exemplos BuiltIn

Exemplos simples utilizando as Keywords da BuiltIn que já estão por padrão no Robot Framework
OBS: Exemplos são didáticos e nem sempre seguirão as melhores práticas de reutilização, interdependência entre outros.

Documentação: [BuiltIn](https://robotframework.org/robotframework/latest/libraries/BuiltIn.html)

- CT01 utiliza as **Keywords Run Keyword If**, **Log To Console** e **Set Test Variable**. Além disso utiliza a [Lib DateTime](https://robotframework.org/robotframework/latest/libraries/DateTime.html) para manipular a data.

- CT02 utiliza as Keywords **Get Time (day)**, **Create Dictionary** e **Set Suite Variable**.

- CT03 utiliza as Keywords **Run Keywords**, **Evaluate** e **Get Time (year)** . Utiliza também a variável de Suite ${mes} criada no teste anterior e dicionário global &{MESES_DIAS}. Utiliza variáveis ${TRUE} e ${FALSE}.
