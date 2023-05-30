*** Settings ***
Documentation    Tudo comeca aqui

Library    Browser
Library    libs/mongo.py
Library    FakerLibrary

Resource    pages/signup.robot

*** Keywords ***
Start session
    New Browser    browser=chromium    headless=False
    New Page    http://localhost:3000