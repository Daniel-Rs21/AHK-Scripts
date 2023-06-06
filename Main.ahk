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

;                                                           Correos
:*:@1::charlies1@live.com.mx
:*:@2::charliesdan1@gmail.com
:*:@3::carlos.ramirezso@alumno.buap.mx
:*:@4::cdanielrs21@gmail.com

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
:C*:JS::JavaScript

;                                                           FUNCIONES

;                                                           Anclar aplicaciónes
Control & Space::
{
    WinSetAlwaysontop(, "A")
}

;                                                           PROGRAMAS

:*:\tm on::
    { ; V1toV2: Added bracket
        Run("`"C:\Users\Daniel Rs\OneDrive\Documents\AHK\Texmaker.ahk`"")
        return
    } ; V1toV2: Added Bracket before hotkey or Hotstring

:*:\bot::
    { ; V1toV2: Added bracket
        Run("`"C:\Users\Daniel Rs\OneDrive\Documents\AHK\Bot.ahk`"")
        return
    } ; V1toV2: Added Bracket before hotkey or Hotstring

:*:\kmouse::
    { ; V1toV2: Added bracket
        Run("`"C:\Users\Daniel Rs\OneDrive\Documents\AHK\Mouse.ahk`"")
        return
    } ; V1toV2: Added Bracket before hotkey or Hotstring

#c::
    { ; V1toV2: Added bracket
        Run("Calc.exe")
        return
    } ; V1toV2: Added Bracket before hotkey or Hotstring

    ;                                                           OBSIDIAN

    :*:\todo::>[{!}todo]

    :*:\importante::>[{!}warning] Importante

    :*:\notas::>[{!}note] Notas

:*:\code::{sc029}{sc029}{sc029}{ENTER}{sc029}{sc029}{sc029}{UP}

