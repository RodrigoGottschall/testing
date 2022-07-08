*** Variables ***
${WEBSITE}                              https://chicorei.com/
${BROWSER}                              Chrome
${BTN_COOKIES}                          id=confirmPolicyButton
${SEARCH}                               id=header-search-input-desktop
${SIZE}                                 css=#product-variations > div.text-yanone > div > div:nth-child(4) > nav > div:nth-child(1)
${COLOR}                                css=#product-variations > div.text-yanone > div > div:nth-child(6) > nav > div:nth-child(1) > div
${BTN_BUY}                              css=#product-buy-button-container > button > span:nth-child(2)
${BAG}                                  css=#header-cart-popover > div > div.text-center > a.btn.btn-lg.mb
${VALIDATE}                             //*[@id="cart-loyalty"]/p
${VALI}                                 VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!
${BTN_OF}                               css=#cart-finish > button.btn.btn-xl.btn-wide.mt.hidden-xs-down
${RESULT}                               //*[@id="header-search-desktop"]/form/div/div/div/div[1]/div/div[2]/div[1]
${ELEMENT_CONFIG}                       //*[@id="product-main-right"]/div[1]/div[2]/div/p[1]

#Vira lata caramelo
${TXT_CARAMELO}                         Vira lata caramelo
${CONFIG_VALUE1}                        R$ 42,90

#Amarelo é desespero
${TXT_AMARELO}                          Amarelo é desespero

#Errar
${TXT_ERARR}                            Erarr
${CONFIG_VALUE2}                        R$ 44,90

#NemTeVi
${TXT_NEMTEVI}                          Nem Te Vi

#Alceu Dispor
${TXT_DISPOR}                           Alceu Dispor
${CONFIG_VALUE3}                        R$ 49,90

#Processo de compra de uma camiseta "Vira lata caramelo" no Site do Chico Rei
*** Keywords ***
Site do Chico Rei
        Open Browser                    ${WEBSITE}        ${BROWSER}
        Maximize Browser Window
        Set Selenium Speed              0.75

Clicar em "Concordar" no aviso sobre Cookies
        Click Element                   ${BTN_COOKIES}  

Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
        Input Text                      ${SEARCH}   ${TXT_CARAMELO}
        Click Element                   ${RESULT}

Validar se o valor do produto é "R$ 42,90"
        Element Should Contain          ${ELEMENTCONFIG}  ${CONFIGVALUE1}

Selecionar um tamanho, cor e clicar em comprar
        Click Element                   ${SIZE}
        Click Element                   ${COLOR}
        Click Element                   ${BTN_BUY}
         
Clicar em "Ver sacola"
        Click Element                   ${BAG}

Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
        Element Should Contain          ${VALIDATE}  ${VALI}

Clicar em "Fechar pedido"
        Click Element                   ${BTN_OF}

# Processo de compra de uma camiseta "Amarelo é desespero" no Site do Chico Rei
Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
        Input Text                      ${SEARCH}    ${TXT_AMARELO}
        Click Element                   ${RESULT}

# Processo de compra de uma camiseta "Erarr é humano" no Site do Chico Rei 
Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
        Input Text                      ${SEARCH}    ${TXT_ERARR}
        Click Element                   ${RESULT}

Validar se o valor do produto é "R$ 44,90"
        Element Should Contain          ${ELEMENTCONFIG}  ${CONFIGVALUE2}

# Processo de compra de uma camiseta "Nem Te Vi" no Site do Chico Rei
Pesquisar por "Nem te vi" e selecionar a primeira opção da lista de resultados
        Input Text                      ${SEARCH}    ${TXT_NEMTEVI}
        Click Element                   ${RESULT}

# Processo de compra de uma camiseta "Alceu Dispor" no Site do Chico Rei 
Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
        Input Text                      ${SEARCH}    ${TXT_DISPOR}
        Click Element                   ${RESULT}

Validar se o valor do produto é "R$ 49,90"
        Element Should Contain          ${ELEMENTCONFIG}  ${CONFIGVALUE3}        




