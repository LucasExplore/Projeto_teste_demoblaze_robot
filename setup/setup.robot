*** Settings ***
Library    SeleniumLibrary
Resource    ../keywords/demoblaze.robot

*** Variables ***
${NAVEGADOR}    chrome
${URL}          https://www.demoblaze.com/index.html



*** Keywords ***
Acessar o site demoblaze
    Open Browser    ${URL}    ${NAVEGADOR}



Fechar o site demoblaze
    Close Browser
