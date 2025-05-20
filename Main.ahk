; REMOVED: #NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input") ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir) ; Ensures a consistent starting directory.

;#SETUP START
#SingleInstance force
ListLines 0
SendMode "Input"
SetWorkingDir A_ScriptDir
KeyHistory 0
#WinActivateForce

ProcessSetPriority "H"

SetWinDelay -1
SetControlDelay -1

;include the library
#Include %A_LineFile%\..\VD.ahk

;#useful stuff
VD.animation_on := false
!+1:: {
    name := VD.getNameFromDesktopNum(4)
    VD.goToDesktopNum(1)
}
!+2:: VD.goToDesktopNum(2)
!+3:: VD.goToDesktopNum(3)
!+4:: VD.goToDesktopNum(4)
!+5:: VD.goToDesktopNum(5)
!+6:: VD.goToDesktopNum(6)
!+7:: VD.goToDesktopNum(7)
!+8:: VD.goToDesktopNum(8)
!+9:: VD.goToDesktopNum(9)

;follow your window

; wrapping / cycle back to first desktop when at the last
^#left:: VD.goToRelativeDesktopNum(-1)
^#right:: VD.goToRelativeDesktopNum(+1)

; move window to left and follow it
#!left:: VD.MoveWindowToRelativeDesktopNum("A", -1).follow()
; move window to right and follow it
#!right:: VD.MoveWindowToRelativeDesktopNum("A", 1).follow()

; move window to left
^#!left:: VD.MoveWindowToRelativeDesktopNum("A", -1)
; move window to right
^#!right:: VD.MoveWindowToRelativeDesktopNum("A", 1)

;Create/Remove Desktop
#!=:: VD.createDesktop(true) ;go to newly created
#!-:: VD.removeDesktop(VD.getCurrentDesktopNum())

#f2:: {

    name := InputBox("Nombre:", "Renombrar Escritorio", "", "") ; Valor predeterminado
    if (name.Result != "OK") { ; Si el usuario cancela
    } else {
        VD.setNameToDesktopNum(name.value, 1)
    }
}

;Pin Window
!0:: VD.TogglePinWindow("A")
!+0:: {
    if (VD.IsWindowPinned("A") = 1) {
        MsgBox "Pinned Windows"
    } else {
        MsgBox "Unpinned Windows"
    }
}

;Pin App
!\:: VD.TogglePinExe("A")
!+\:: {
    if (VD.IsExePinned("A") = 1) {
        MsgBox "Pinned App"
    } else {
        MsgBox "Unpinned App"
    }
}

$>^f:: return
$f:: {
    trigger := "f"
    modifier := "RControl "
    SendInput(trigger)
    if (!KeyWait(trigger, "T0.30")) {
        SendInput("{BackSpace}")
        Send "{" modifier " down}"
        KeyWait(trigger)
        Send "{" modifier " up}"
    }
}

$>+d:: return
$d:: {
    trigger := "d"
    modifier := "RShift "
    SendInput(trigger)
    if (!KeyWait(trigger, "T0.3")) {
        SendInput("{BackSpace}")
        Send "{" modifier " down}"
        KeyWait(trigger)
        Send "{" modifier " up}"
    }
}

$>!s:: return
$s:: {
    trigger := "s"
    modifier := "RAlt "
    SendInput(trigger)
    if (!KeyWait(trigger, "T0.3")) {
        SendInput("{BackSpace}")
        Send "{" modifier " down}"
        KeyWait(trigger)
        Send "{" modifier " up}"
    }
}

$>#a:: return
$a:: {
    trigger := "a"
    modifier := "RWin "
    SendInput(trigger)
    if (!KeyWait(trigger, "T0.3")) {
        SendInput("{BackSpace}")
        Send "{" modifier " down}"
        KeyWait(trigger)
        Send "{" modifier " up}"
    }
}

;                                                           REEMPLAZOS

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
:*?:ssirfc::SSI010307JH1
:*?:ssirs::SCHAEFER SISTEMAS INTERNATIONAL
:*?:ssicp::06600
:*?:ssigc::git clone "ssh://daniel.ramirez%40ssi-schaefer.com@git.ssi-schaefer.com:2501/prj/"{LEFT}
:*?:ssigp::git push origin HEAD:refs/for/master
:*?:ssiusr::dnramirez
:*:ssipass::Ammonium95Overcook7{!}Monogram7
:*?:\\wksp::cd /media/c/Users/MXPUE212/Workspaces
:*?:\\log::cd wamas/mfs/com.wamas.acx4.mfs/log
:*?:\\botic::cd /media/c/Users/MXPUE212/Workspaces/18_4-Boticario/wamas/mfs/com.wamas.acx4.mfs
:*?:\\gutis::cd /media/c/Users/MXPUE212/Workspaces/18_4-Gutis/wamas/mfs/com.wamas.acx4.mfs
:*?:\\camac::cd /media/c/Users/MXPUE212/Workspaces/18_7-Boticario_Camacari/wamas/mfs/com.wamas.acx4.mfs

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

:*?:\num on::
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
    VD.runApp("Firefox")
    return
}

#o::
{
    VD.runApp("Obsidian")
    return
}

#+w::
{
    VD.runApp("WhatsApp")
    return
}

#+v::
{
    VD.runApp("Visual Studio Code")
    return
}

;                                                           OBSIDIAN

:*:\sec::[[{^}]]{LEFT 2}

:*:\head::[[{#}]]{LEFT 2}

:*:\callout::>[{!}]{LEFT}

:*:\caption::>[{!}caption]{ENTER}{SPACE}

:*:\code::{sc029 3}{ENTER 2}{sc029 3}{UP 2}

:*:\icode::> [{!}code]{SPACE}

:*:\sql::{sc029 3}sql{ENTER 2}{sc029 3}{UP}

:*:\isql::{sc029}{{}sql{}}{sc029}{LEFT}

:*:\java::{sc029 3}java{ENTER 2}{sc029 3}{UP}

:*:\py::{sc029 3}python{ENTER 2}{sc029 3}{UP}

:*:\ipy::{sc029}{{}python{}}{sc029}{LEFT}

:*:\js::{sc029 3}js{ENTER 2}{sc029 3}{UP}

:*:\ijs::{sc029}{{}js{}}{sc029}{LEFT}

:*:\jx::{sc029 3}jsx{ENTER 2}{sc029 3}{UP}

:*:\ijx::{sc029}{{}jsx{}}{sc029}{LEFT}

:*:\html::{sc029 3}html{ENTER 2}{sc029 3}{UP}

:*:\ihtml::{sc029}{{}html{}}{sc029}{LEFT}

:*:\css::{sc029 3}css{ENTER 2}{sc029 3}{UP}

:*:\icss::{sc029}{{}css{}}{sc029}{LEFT}

:*:\shell::{sc029 3}shell{ENTER 2}{sc029 3}{UP}

:*:\ishell::{sc029}{{}shell{}}{sc029}{LEFT}

:*:\res::{sc029 3}shell title:"Resultado"{ENTER 2}{sc029 3}{UP}

:*:\dv::{sc029 3}dataview{ENTER 2}{sc029 3}{UP}

:*:\jdv::{sc029 3}dataviewjs{ENTER 2}{sc029 3}{UP}

::/bc::/* */{LEFT 3}

:*:\multic::>[{!}multi-column]{ENTER}{SPACE}

:*:\bcol::>[{!}blank-column]{ENTER}{SPACE}

:*:\2bcol::>[{!}multi-column]{ENTER}{SPACE}>[{!}blank-column]{ENTER}{SPACE}a{ENTER 2}>[{!}blank-column]{ENTER}{SPACE}