*** Settings ***
Documentation   Variavéis globais com as informações sobre o app

*** Variables ***
${REMOTE_URL}                 http://localhost:4723/wd/hub
${platformName}               Android
${deviceName}                 emulator-5554
${app}                        ${CURDIR}/../apk/Appium_Test.apk
${ensureWebviewsHavePages}    true
