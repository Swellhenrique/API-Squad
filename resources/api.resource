
*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://fakestoreapi.com

*** Keywords ***
Conectar a FakeStore API
    Create Session    fakestore    ${BASE_URL}
