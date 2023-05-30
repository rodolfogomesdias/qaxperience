*** Settings ***
Resource    ../resources/base.robot


*** Test Cases ***
Deve cadastrar um novo usuario
    &{user}=    Create Dictionary    
    ...    name=Rodolfo Dias    
    ...    email=rodolfo.gomesdias@gmail.com    
    ...    password=pwd123              
    
    Remove User By Email    ${user}[email]

    Start Session
    Go to signup
    Register user    ${user}    
    Notice should be    Boas vindas ao Mark85, o seu gerenciador de tarefas.


Usuario duplicado
    [Tags]    dup

    &{user}=    Create Dictionary    
    ...    name=Rodrigo Dias  
    ...    email=rodrigo.gomesdias@gmail.com    
    ...    password=pwd123    

    Remove User By Email    ${user}[email]

    Start Session
    Go to signup


    Register user    ${user}    
    Register user    ${user}    
    Notice should be    Oops! Já existe um cadastro com e-mail informado.



Nome deve ser obrigatorio
Email deve ser obrigatorio
Senha deve ser obrigatoria
