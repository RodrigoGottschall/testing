*** Settings ***
Library             SeleniumLibrary
Resource            ./chico.resource
Test Setup          Site do Chico Rei
Test Teardown       Close Browser 

*** Test Cases ***
Processo de compra de uma camiseta "Vira lata caramelo" no Site do Chico Rei
       Clicar em "Concordar" no aviso sobre Cookies
       Pesquisar por "Vira lata caramelo" e selecionar a primeira opção da lista de resultados
       Validar se o valor do produto é "R$ 42,90"
       Selecionar um tamanho, cor e clicar em comprar
       Clicar em "Ver sacola"
       Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
       Clicar em "Fechar pedido"

Processo de compra de uma camiseta "Amarelo é desespero" no Site do Chico Rei
       Clicar em "Concordar" no aviso sobre Cookies
       Pesquisar por "Amarelo é desespero" e selecionar a primeira opção da lista de resultados
       Validar se o valor do produto é "R$ 42,90"
       Selecionar um tamanho, cor e clicar em comprar
       Clicar em "Ver sacola"
       Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
       Clicar em "Fechar pedido"

Processo de compra de uma camiseta "Erarr é humano" no Site do Chico Rei
       Clicar em "Concordar" no aviso sobre Cookies
       Pesquisar por "Erarr" e selecionar a primeira opção da lista de resultados
       Validar se o valor do produto é "R$ 44,90"
       Selecionar um tamanho, cor e clicar em comprar
       Clicar em "Ver sacola"
       Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
       Clicar em "Fechar pedido"

Processo de compra de uma camiseta "Nem Te Vi" no Site do Chico Rei
       Clicar em "Concordar" no aviso sobre Cookies
       Pesquisar por "Nem Te Vi" e selecionar a primeira opção da lista de resultados
       Validar se o valor do produto é "R$ 42,90"
       Selecionar um tamanho, cor e clicar em comprar
       Clicar em "Ver sacola"
       Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
       Clicar em "Fechar pedido"

Processo de compra de uma camiseta "Alceu Dispor" no Site do Chico Rei
       Clicar em "Concordar" no aviso sobre Cookies
       Pesquisar por "Alceu Dispor" e selecionar a primeira opção da lista de resultados
       Validar se o valor do produto é "R$ 49,90"
       Selecionar um tamanho, cor e clicar em comprar
       Clicar em "Ver sacola"
       Validar se a mensagem "VOCÊ ESTÁ ACUMULANDO 1 PONTO NO CARTÃO FIDELIDADE!" está sendo exibida
       Clicar em "Fechar pedido"


