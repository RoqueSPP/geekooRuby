***Settings***

Resource        BasePage.robot

Test Setup      abrir navegador
Test Teardown   fechar navegador


***Variables***
${thor}         id:thor
${capitao}      css:input[value='cap']
${iron}         css:input[value='iron-man']
${panther}      xpath://*[@id='checkboxes']/input[7]

***Test Cases***
deve abrir a pagina
    Title Should Be     Training Wheels Protocol


Selecionar checkbox
    [Tags]      checkboxes
    Go to                     ${Url}/checkboxes
    sleep                            2
    Select Checkbox                  ${thor}
    Checkbox Should Be Selected      ${thor}
    sleep                            2

selecionar capitão america
    [tags]      cap-america
    Go to                     ${Url}/checkboxes

    sleep                            2
    Select Checkbox                  ${capitao}
    Checkbox Should Be Selected      ${capitao}
    sleep                            2

selcionar homem de ferro
    [Tags]      iron-man
     Go to                     ${Url}/checkboxes
    sleep                            2
    Select Checkbox                  ${iron}
    Checkbox Should Be Selected      ${iron}
    sleep                            2
  

selcionar pantera negra
    [Tags]      pantera-xpath
    Go to                     ${Url}/checkboxes
    sleep                            2
    Select Checkbox                  ${panther}
    Checkbox Should Be Selected      ${panther}
    sleep                            2
    


    
    