***Settings***
Library     SeleniumLibrary


***Variables***

${Url}=     https://training-wheels-protocol.herokuapp.com

***Keywords***

abrir navegador
    Open Browser                     ${Url}/checkboxes      Chrome
fechar navegador
    Close Browser