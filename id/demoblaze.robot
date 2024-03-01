* Variables *
#login
${USUARIO}             id=loginusername       
${SENHA}               id=loginpassword    
${BUTTON_LOGIN}        css=#login2
${loggin}              css=[onclick="logIn()"]



#cadastro usuario
${SINGUP}               id=signin2
${CADASTRO_USUARIO}     id=sign-username
${CADASTRO_SENHA}       id=sign-password
${BOTAO_CADASTRO}       css=[onclick="register()"]


#adicionando produto no carrinho 
${PHONE}                     css=[onclick=\"byCat('phone')\"]
${MODELO_CELULAR}            css=a[href="prod.html?idp_=3"]
${ADD_CARRINHO}              css=a[href='#'][onclick*='addToCart']
${HOME}                      css=#nava
${NOTEBOOK}                  css:[onclick="byCat('notebook')"]
${MODELO_NOTEBOOK}           css:a[href="prod.html?idp_=9"].hrefch
${ADD_CARRINHO_NOTEBOOK}     css:a.btn.btn-success.btn-lg
${MONITOR}                   css:[onclick="byCat('monitor')"]
${MODELO_MONITOR}            css:a[href="prod.html?idp_=14"].hrefch
${CARRINHO}                  css:a.nav-link#cartur