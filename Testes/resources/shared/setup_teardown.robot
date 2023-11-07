*** Settings ***
Resource    ../main.robot

*** Keywords ***
Acessar o Organo
    Open Browser    url=http://localhost:3000/   browser=Chrome

Fechar o navegador
    Close Browser   
