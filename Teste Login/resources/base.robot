*** Settings ***
Library    SeleniumLibrary
Library    Screenshot
Library    BuiltIn
Library    String
Library    FakerLibrary    locale=pt_BR

#### Steps #####
Resource    ../steps/login_testes.robot

#### Pages #####
Resource    ../pages/login_testes.robot

Variables    dados.yaml