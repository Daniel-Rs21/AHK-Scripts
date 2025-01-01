; REMOVED: #NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input") ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir) ; Ensures a consistent starting directory.

;                                                           REEMPLAZOS

;                                                           Acentos
:*?:;a::á
:*?:;e::é
:*?:;i::í
:*?:;o::ó
:*?:;u::ú
:*?:;n::ñ

;                                                           Contacto
:*:@1::charlies1@live.com.mx
:*:@2::charliesdan1@gmail.com
:*:@3::carlos.ramirezso@alumno.buap.mx
:*:@4::cdanielrs21@gmail.com
:*:@5::daniel.ramirez@ssi-schaefer.com
:*:;tel::2228413558

;                                                           Nombres
:*:cdrs::Carlos Daniel Ramírez Solano
:*:rscd::Ramírez Solano Carlos Daniel

;                                                           Otros
:*?:;BUAP::Benemérita Universidad Autónoma de Puebla
:*?:;g::°
:*:\?::¿?{LEFT}
:*:;?::¿?{LEFT}
:*:;!::¡!{LEFT}
:*:;mat::201865361
:*:;curp::RASC000421HPLMLRA7
:*:;blanco::?
:*:;^a::?
:*:;lorem::Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel mauris tristique, lobortis velit vitae, faucibus magna. Proin porta magna neque, quis tincidunt lectus vulputate nec. Nullam ac scelerisque quam. Quisque eu eros eu ligula dignissim faucibus. Ut quis nibh malesuada, aliquam justo vitae, molestie enim. Nunc sit amet laoreet quam. Aliquam sem magna, vulputate ut mattis at, efficitur eleifend felis. Sed eleifend pharetra enim, eget faucibus odio. Nam et congue mi. Curabitur ligula lorem, sodales nec magna eu, porta tempor turpis. Quisque aliquam mauris vitae nisl porttitor, id condimentum elit commodo. Sed ac egestas erat, ullamcorper varius ante. Vestibulum non efficitur arcu, quis fringilla mauris. Nullam lobortis et dolor non placerat. In hendrerit, nibh vitae consequat luctus, enim nisi semper tortor, eget luctus augue libero sit amet orci.
:C*:;JS::JavaScript
:*:;jsn::Node.js
:C*:;MS::MySQL
:*?:;ss::Espíritu Santo
:*:\blanco::‎ 

;                                                           Trabajo
:*:ssirfc::SSI010307JH1
:*:ssirs::SCHAEFER SISTEMAS INTERNATIONAL
:*:ssicp::06600
:*:ssigc::git clone "ssh://daniel.ramirez%40ssi-schaefer.com@git.ssi-schaefer.com:2501/prj/"{LEFT}
:*:ssiusr::dnramirez
:*:ssipass::Ammonium95Overcook7{!}Monogram7





;                                                           Programación

:*:\msp::cd c:\Program Files\MySQL\MySQL Server 8.0\bin
:*:\msc::mysql -h localhost -u root -p
:*:\msw::show databases;
:*:\esli::npm install eslint vite-plugin-eslint eslint-config-react-app --save-dev
:*:\eslf::.eslintrc.json
:*:\eslc::{{}{ENTER}"extends": "react-app"
:*:\eslm::import eslint from "vite-plugin-eslint"
:*:\twi::npm install -D tailwindcss postcss autoprefixer{ENTER}npx tailwindcss init -p
:*:\twc::"./index.html","./src/**/*.{{}js,ts,jsx,tsx{}}",
:*:\tws::@tailwind base;{ENTER}@tailwind components;{ENTER}@tailwind utilities;
:*:\twpi::npm install -D prettier prettier-plugin-tailwindcss
:*:\twpf::.prettierrc
:*:\twpc::{{}{ENTER}"plugins": ["prettier-plugin-tailwindcss"]
:*:\rxi::npm i @reduxjs/toolkit react-redux
:*:\twpc::{{}{ENTER}"plugins": ["prettier-plugin-tailwindcss"]
:*:\sci::npm i styled-components
:*:\e2f::<link rel="icon"href="data:image/svg+xml,<svg xmlns=%22http://www.w3.org/2000/svg%22 viewBox=%220 0 100 100%22><text y=%22.9em%22 font-size=%2290%22> </text></svg>"/>



;                                                           PROGRAMAS

:*:\tm on::
    { 
        Run("`"C:\Users\Daniel Rs\OneDrive\Documents\AHK\Texmaker.ahk`"")
        return
    }

:*:\bot::
    { 
        Run("`"C:\Users\Daniel Rs\OneDrive\Documents\AHK\Bot.ahk`"")
        return
    }

:*:\kmouse::
    { 
        Run("`"C:\Users\Daniel Rs\OneDrive\Documents\AHK\Mouse.ahk`"")
        return
    }

:*:\num on::
    { 
        Run("`"C:\Users\MXPUE212\Documents\AHK-Scripts\Copiado.ahk`"")
        return
    }

#c:: 
    {
        Run '*RunAs "cmd.exe"'
        return
    }

#^c::
    { 
        Run("Calc.exe")
        return
    } 

#f::
    { 
        runApp("Firefox")
        return
    } 

#o::
    { 
        runApp("Obsidian")
        return
    } 

#+a::
    { 
        runApp("Arc")
        return
    } 

#+w::
    { 
        runApp("WhatsApp")
        return
    } 

#+e::
    { 
        runApp("Microsoft Edge")
        return
    } 

#+v::
    { 
        runApp("Visual Studio Code")
        return
    } 

; Function to run windows store apps
runApp(appName) { ; https://www.autohotkey.com/boards/viewtopic.php?p=438517#p438517
    For app in ComObject('Shell.Application').NameSpace('shell:AppsFolder').Items
        (app.Name = appName) && RunWait('explorer shell:appsFolder\' app.Path)
    }


    
    ;                                                           OBSIDIAN

:*:\todo::>[{!}todo]

:*:\importante::>[{!}warning] Importante

:*:\notas::>[{!}note] Notas

:*:\callout::>[{!}]{LEFT}

:*:\caption::>[{!}caption]{ENTER}{SPACE}

:*:\code::{sc029}{sc029}{sc029}{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}{UP}

:*:\icode::> [{!}code]{SPACE}

:*:\sql::{sc029}{sc029}{sc029}sql{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\isql::{sc029}{{}sql{}}{sc029}{LEFT}

:*:\java::{sc029}{sc029}{sc029}java{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\py::{sc029}{sc029}{sc029}python{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\ipy::{sc029}{{}python{}}{sc029}{LEFT}

:*:\js::{sc029}{sc029}{sc029}js{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\ijs::{sc029}{{}js{}}{sc029}{LEFT}

:*:\jx::{sc029}{sc029}{sc029}jsx{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\ijx::{sc029}{{}jsx{}}{sc029}{LEFT}                   

:*:\html::{sc029}{sc029}{sc029}html{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\ihtml::{sc029}{{}html{}}{sc029}{LEFT}

:*:\css::{sc029}{sc029}{sc029}css{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\icss::{sc029}{{}css{}}{sc029}{LEFT}

:*:\shell::{sc029}{sc029}{sc029}shell{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\ishell::{sc029}{{}shell{}}{sc029}{LEFT}

:*:\res::{sc029}{sc029}{sc029}shell title:"Resultado"{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\dv::{sc029}{sc029}{sc029}dataview{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:\jdv::{sc029}{sc029}{sc029}dataviewjs{ENTER}{ENTER}{sc029}{sc029}{sc029}{UP}

:*:/bc::/*  */{LEFT}{LEFT}{LEFT}

:*:\multic::>[{!}multi-column]{ENTER}{SPACE}

:*:\col::>[{!}column]{SPACE}

:*:\clases::>[{!}clases]{SPACE}

:*:\bcol::>[{!}blank-column]{ENTER}{SPACE}

:*:\2col::>[{!}multi-column]{ENTER}{SPACE}>[{!}column]{ENTER}{SPACE}a{ENTER}{ENTER}>[{!}column]{ENTER}{SPACE}

:*:\2bcol::>[{!}multi-column]{ENTER}{SPACE}>[{!}blank-column]{ENTER}{SPACE}a{ENTER}{ENTER}>[{!}blank-column]{ENTER}{SPACE}

