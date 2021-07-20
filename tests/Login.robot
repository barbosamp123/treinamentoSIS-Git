*** Settings ***

Library           SeleniumLibrary

*** Test Case ***
Cenário: Login na aplicação
    # Abrir o navegador.
    Open Browser    http://automationpractice.com/index.php       chrome
    Set Selenium Timeout    60
    # Maximizar o navegador
    Maximize Browser Window
    Capture Page Screenshot
    # Clicar no elemento
    Click Element     xpath=//a[@class='login']
    # Inserir um texto no elemento
    Input Text    id=email    rasafa9934@ovooovo.com
    Input Text    id=passwd    Teste@123
    Capture Page Screenshot
    Click Element    id=SubmitLogin
    # Validar se existe um texto na tela
    Page Should Contain    Marcos  Barbos 
    # Tirar um print da tela
    Capture Page Screenshot
    # Fechar o Navegador
    Close Browser
