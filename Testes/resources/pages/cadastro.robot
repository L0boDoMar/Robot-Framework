*** Settings ***
Resource    ../main.robot

*** Variables ***
${URL}                    http://localhost:3000/
${CAMPO_NOME}             id:form-nome
${CAMPO_CARGO}            id:form-cargo
${CAMPO_IMAGEM}           id:form-imagem
${CAMPO_TIME}             class:lista-suspensa
${BOTAO_CARD}             id:form-botao
${OPCAO_PROGRAMACAO}      //option[contains(.,'Programação')]
${OPCAO_FRONT}            //option[contains(.,'Front-End')]
${OPCAO_DADOS}            //option[contains(.,'Data Science')]
${OPCAO_DEVOPS}           //option[contains(.,'Devops')] 
${OPCAO_UX}               //option[contains(.,'UX e Design')]
${OPCAO_MOBILE}           //option[contains(.,'Mobile')]
${OPCAO_INOVACAO}         //option[contains(.,'Inovação e Gestão')]
${COLABORADOR}            class:colaborador

*** Keywords ***

Preencher os campos do formulário 
    ${Nome}    FakerLibrary.First Name
    Input Text    ${CAMPO_NOME}    ${Nome}
    ${Cargo}    FakerLibrary.Job
    Input Text    ${CAMPO_CARGO}    ${Cargo} 
    ${Imagem}    FakerLibrary.Image Url
    Input Text    ${CAMPO_IMAGEM}    ${Imagem}
    Click Element  ${CAMPO_TIME}
    Click Element  ${OPCAO_PROGRAMACAO}

Clicar no botão criar card
    Click Button    ${BOTAO_CARD}

Identificar o card dentro do time esperado
    Element Should Be Visible    ${COLABORADOR}

Mensagem de erro
    Element Should Be Visible    id:form-nome-erro
    Element Should Be Visible    id:form-cargo-erro
    Element Should Be Visible    id:form-times-erro
   