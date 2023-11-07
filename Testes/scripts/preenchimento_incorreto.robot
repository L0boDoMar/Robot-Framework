*** Settings ***
Resource           ../resources/main.robot 
Test Setup         Acessar o Organo
Test Teardown      Fechar o navegador

*** Variables ***
${BOTAO_CARD}             id:form-botao

*** Test Cases ***
Verificar se quando um campo obrigatório não for preenchido o sistema exibe uma mensagem de erro
    Clicar no botão criar card
    Mensagem de erro