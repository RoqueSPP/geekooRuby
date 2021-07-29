***Settings***
Library     SeleniumLibrary

***Test Cases***
deve abrir a pagina
    Open Browser        https://training-wheels-protocol.herokuapp.com      Chrome
    Title Should Be     Training Wheels Protocol
    Close Browser