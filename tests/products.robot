
*** Settings ***
Library    RequestsLibrary
Library    Collections


*** Variables ***
${url}    https://fakestoreapi.com/products
${id}     1


*** Test Cases ***
GET - Buscar produto existente
    # Executar
    ${response}    GET    ${{$url + '/' + $id}}

    # Validar
    ${response_body}    Set Variable    ${response.json()}
    Log To Console    ${response_body}

    Status Should Be    200    ${response}

    Should Be Equal As Integers    ${response_body}[id]    ${id}
    Dictionary Should Contain Key    ${response_body}    title
    Dictionary Should Contain Key    ${response_body}    price
    Dictionary Should Contain Key    ${response_body}    description
    Dictionary Should Contain Key    ${response_body}    category
    Dictionary Should Contain Key    ${response_body}    image


DELETE - Excluir produto existente
    # Executar
    ${response}    DELETE    ${{$url + '/' + $id}}

    # Validar
    ${response_body}    Set Variable    ${response.json()}
    Log To Console    ${response_body}

    Status Should Be    200    ${response}

    Should Be Equal As Integers    ${response_body}[id]    ${id}
    Dictionary Should Contain Key    ${response_body}    title
    Dictionary Should Contain Key    ${response_body}    price
