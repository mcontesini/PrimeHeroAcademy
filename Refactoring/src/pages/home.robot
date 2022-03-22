*** Variables ***
${URL}    http://automationpractice.com/index.php    
${BROWSER}    Chrome
${TITULO_PRODUTO}    /html/body/div[1]/div[2]/div/div[3]/div[2]/ul/li/div/div[2]/h5/a
${RESULTADO}    xpath=//p[@class='alert alert-warning']    
${TITULO_HOMEPAGE}    My Store
${CAIXA_PESQUISA}    name=search_query
${BOTAO_PESQUISA}    name=submit_search
${BOTAO_WOMEN}    xpath=//a[@title='Women']
${BOTAO_SUMMER_DRESSES}    //*[@id="block_top_menu"]/ul/li[1]/ul/li[2]/ul/li[3]/a
${TITULO_PRODUTO_2}    xpath=//h5[@itemprop='name']/child::a[@class='product-name']
# ${TITULO_PRODUTO_2} esse xpath mostra todos (3) proutos da categoria Summer Dresses
${BOTAO_LOGIN}    xpath=//a[@class='login']
${CAMPO_EMAIL}    id=email_create
${BOTAO_CRIAR_CONTA}    id=SubmitCreate
${FIRST_NAME}    id=customer_firstname
${LAST_NAME}    id=customer_lastname
${PASSWORD}    id=passwd
${ADDRESS}    id=address1
${CITY}    id=city
#${ESTADO}    id=id_state    não funcionou
${ESTADO}    xpath=//select[@id='id_state']/child::option[@value='2']
${POSTAL_CODE}    id=postcode
#${PAIS}    id=id_country    não funcionou
${PAIS}    xpath=//select[@id='id_country']/child::option[@value='21']
${PHONE}    id=phone_mobile 

${MY_ACCOUNT}    xpath=//div[@id='center_column']/child::h1[@class='page-heading']   
${BOTAO_REGISTRAR}    id=submitAccount