*Settings
Resource          BasePage.robot
Test Setup        abrir navegador
Test Teardown     fechar navegador

*Variables      
      

*Test Cases
Selecionar select texto

    Go To                       ${Url}/dropdown
    Select From List By Label   class:avenger-list  Bruce Banner
   ${r} =                        Get Selected List Value     class:avenger-list
    Should Be Equal             ${r}    5
    sleep                       2

Selecionar select value

    Go To                       ${Url}/dropdown
    Select From List By value   id:dropdown  3
    ${r} =                       Get Selected List Label    id:dropdown
    Should Be Equal             ${r}    Tony Stark
    sleep                       2