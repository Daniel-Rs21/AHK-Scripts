#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

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
:*:;blanco::‎
:*:;^a::ᵃ
:*:;lorem::Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel mauris tristique, lobortis velit vitae, faucibus magna. Proin porta magna neque, quis tincidunt lectus vulputate nec. Nullam ac scelerisque quam. Quisque eu eros eu ligula dignissim faucibus. Ut quis nibh malesuada, aliquam justo vitae, molestie enim. Nunc sit amet laoreet quam. Aliquam sem magna, vulputate ut mattis at, efficitur eleifend felis. Sed eleifend pharetra enim, eget faucibus odio. Nam et congue mi. Curabitur ligula lorem, sodales nec magna eu, porta tempor turpis. Quisque aliquam mauris vitae nisl porttitor, id condimentum elit commodo. Sed ac egestas erat, ullamcorper varius ante. Vestibulum non efficitur arcu, quis fringilla mauris. Nullam lobortis et dolor non placerat. In hendrerit, nibh vitae consequat luctus, enim nisi semper tortor, eget luctus augue libero sit amet orci.
:C*:JS::JavaScript


;                                                           FUNCIONES

;                                                           Anclar aplicaciónes
Control & Space:: Winset, Alwaysontop, , A

;                                                           Seleccionar día
:*?:;f::
    Gui, New, +ToolWindow
    Gui, Add, MonthCal, vDayPick 8
    Gui, Add, Button, Default h28 x110, Submit
    Gui, Show
return

ButtonSubmit:
    Gui, Submit
    FormatTime, DayPick, %DayPick%, dddd d
    StringUpper, DayPick, DayPick, T
    Send, %DayPick%
    Gui, Destroy
Return

;                                                           PROGRAMAS

:*:\tm on::
    Run, "C:\Users\Daniel Rs\OneDrive\Documents\AHK\Texmaker.ahk"
return

:*:\bot::
    Run, "C:\Users\Daniel Rs\OneDrive\Documents\AHK\Bot.ahk"
return

:*:\kmouse::
    Run, "C:\Users\Daniel Rs\OneDrive\Documents\AHK\Mouse.ahk"
return

;                                                           OBSIDIAN

:*:\todo::>[{!}todo] 

:*:\importante::>[{!}warning] Importante

:*:\notas::>[{!}note] Notas

:*:\code::{sc029}{sc029}{sc029}{ENTER}{sc029}{sc029}{sc029}{UP}









