*Settings
Resource          BasePage.robot
Test Setup        abrir navegador
Test Teardown     fechar navegador


*Test Cases

Preencher formulario

    Go To                   ${Url}/login

    Input text              css:input[name=username]    stark
    Input text              css:input[name=password]    jarvis!
    Click Button            xpath:/html/body/div[2]/div/div/form/button
   ${log}                   Page Should Contain     Área Logada
   Log  ${log}
   Log To Console           ${log}
    sleep                   2