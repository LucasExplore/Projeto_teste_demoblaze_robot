* Settings *
Resource    ../id/demoblaze.robot
Library    FakerLibrary


* Keywords *
Cadastro de usuario
    Click Element       ${SINGUP}
    Sleep               5s
    ${USUARIO_text}    FakerLibrary.Name    # Gera um nome de usuário aleatório
    ${SENHA_text}      FakerLibrary.Password    # Gera uma senha aleatória
    Input Text             ${CADASTRO_USUARIO}     ${USUARIO_text}
    Input Text             ${CADASTRO_SENHA}       ${SENHA_text}
    Set Suite Variable     ${USUARIO_text}    # Armazena o nome de usuário em uma variável de suite
    Set Suite Variable     ${SENHA_text}      # Armazena a senha em uma variável de suite
    Click Element          ${BOTAO_CADASTRO}
    Sleep    5s
    Handle Alert    accept
    Sleep    5s

Login com sucesso
    Click Element        ${BUTTON_LOGIN}
    Sleep    5s
    Input Text         ${USUARIO}     ${USUARIO_text}
    Input Text         ${SENHA}       ${SENHA_text}
    Click Element      ${loggin}
    Sleep    5s

Adicionando produto no carrinho
    Click Element     ${PHONE}
    Sleep    5s
    Click Element           ${MODELO_CELULAR} 
    Sleep           3s
    Click Element            ${ADD_CARRINHO} 
    Sleep           3s
    Handle Alert    accept
    Sleep           3s
    Click Element            ${HOME}  
    Sleep           3s
    Click Element            ${NOTEBOOK} 
    Sleep           2s
    Click Element            ${MODELO_NOTEBOOK}
    Sleep           3s
    Click Element            ${ADD_CARRINHO_NOTEBOOK}
    Sleep           3s
    Handle Alert    accept
    Sleep           2s
    Click Element            ${HOME}  
    Sleep           3s
    Click Element            ${MONITOR}    
    Sleep           2s
    Click Element            ${MODELO_MONITOR} 
    Sleep           2s
    Click Element            ${ADD_CARRINHO}
    Handle Alert    accept
    Sleep           3s
    Click Element            ${CARRINHO}  
    Sleep           2s

Concluindo a compra 
    Click Element   css:button.btn.btn-success[data-toggle="modal"][data-target="#orderModal"]
    Sleep           2s
    Input Text      id=name          Lucas
    Input Text      id=country       Brasil
    Input Text      id=city          SP 
    Input Text      id=card          4129855766702141
    Input Text      id=month         3
    Input Text      id=year          2024
    Click Element   css:button.btn.btn-primary[onclick="purchaseOrder()"]
    Page Should Contain     Thank you for your purchase!

Removendo monitor do carrinho
    Sleep           5s
    Page Should Contain    ASUS Full HD
    Click Element          xpath=//td[contains(text(), 'ASUS Full HD')]/following-sibling::td/a[contains(@onclick, "deleteItem")]
    #Click Element    (//a[contains(@onclick, "deleteItem")])[1]
    Sleep           2s