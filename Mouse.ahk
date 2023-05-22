#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

SetDefaultMouseSpeed, 0
w::MouseMove, 0, -1, 100, R
s::MouseMove, 0, 1, 100, R 
a::MouseMove, -1, 0, 100, R 
d::MouseMove, 1, 0, 100, R 
q::MouseClick, left 
e::MouseClick, right 

lkjh::ExitApp ; when you press ctrl+alt+z, the app will exit