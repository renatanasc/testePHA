*** Settings ***
Documentation       Aqui neste arquivo estarão presentes todos 
...                 os tipos de variaveis que iremos estudar

Library             SeleniumLibrary
Test Setup          Abrir o meu navegador
Test Teardown       Fechar Browser

*** Variables ***
${URL}              http://automationpractice.com/index.php/    
${BROWSER}          chrome
${buscar}           id=search_query_top
${lupa}             name=submit_search

*** Test Cases ***

Cenário: Buscando um produto
    [Tags]      vestido
    Dado que eu esteja logado na tela principal do site
    Quando pesquisar por "vestido"
    Então deverá validar se o produto esta correto

*** Keywords ***
Dado que eu esteja logado na tela principal do site
    Title Should Be         My Store
    

Quando pesquisar por "${produto}"
    Input text          ${buscar}       ${produto}  
    Click Element       ${lupa}      
                 

Então deverá validar se o produto esta correto
    Wait Until Page Contains    0 results have been found.        


Abrir o meu navegador
    Open Browser    ${URL}   ${BROWSER}
    Maximize Browser Window

Fechar Browser
    Capture Page Screenshot
    Sleep       2
    Close Browser    

#add