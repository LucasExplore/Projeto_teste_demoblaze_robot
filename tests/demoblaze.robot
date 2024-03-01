

*** Settings ***
Resource    ../id/demoblaze.robot
Resource    ../setup/setup.robot
Resource    ../keywords/demoblaze.robot

Library    FakerLibrary

Test Setup          Acessar o site demoblaze
Test Teardown       Fechar o site demoblaze


*** Test Cases ***
Cadastro do usuario
    Cadastro de usuario

Concluir a comprar
    Login com sucesso
    Adicionando produto no carrinho
    Concluindo a compra 

Remover o Produto
    Login com sucesso
    Adicionando produto no carrinho
    Removendo monitor do carrinho
