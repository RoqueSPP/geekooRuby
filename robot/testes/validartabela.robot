*Settings
Resource         BasePage.robot
Test Setup       abrir navegador
Test Teardown    fechar navegador


*Test Cases
Validar nomes em tabela
    Go To                               ${Url}/tables
    Table Row Should Contain    id:actors   3       @prattprattpratt
    ${target}=                  Get WebElement      xpath:.//tr[contains(.,'Domic Toreto')]
    Should Contain              ${target.text}	    $ 10.000.000
    Should Contain              ${target.text}	    Domic Toreto
    log                         ${target.text}
    log To Console              ${target.text}