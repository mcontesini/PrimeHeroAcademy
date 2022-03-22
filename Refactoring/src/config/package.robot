*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    DebugLibrary

## hooks: onde está o setup e o teardown
Resource    hooks.robot

## pages: Variaveis da page objects e interação com as paginas
Resource    ../pages/home.robot

## keywords: arquivos onde estão as implementações das keywords
Resource    ../auto/keywords/keywords.robot