*** Settings ***
Resource           ../resources/main.robot
Test Setup         Acessar o Organo
Test Teardown      Fechar o navegador

*** Test Cases ***
Verificar se ao preencher os campos do formulário corretamente os dados são inseridos na lista e se um novo card é criado no time selecionado
    Preencher os campos do formulário
    Clicar no botão criar card
    Identificar o card dentro do time esperado

    
    
   
    
    