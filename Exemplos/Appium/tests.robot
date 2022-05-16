*** Settings ***
Documentation    This script starts and run simple tasks on YouTube app  
Library          AppiumLibrary
Resource         ./variables.robot

*** Test Cases ***
Open App
    [Documentation]    Abre o aplicativo
    Open Youtube

*** Keywords ***
Open Youtube
    [Documentation]    Abre app com variables
    Open Application    ${REMOTE_URL}                platformName=${PLATFORM_NAME}                            platformVersion=${PLATFORM_VERSION}    
    ...                 deviceName=${DEVICE_NAME}    appPackage=${APP_PACKAGE}	appActivity=${APP_ACTIVITY}    automationName=${AUTOMATION_NAME}
