#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

:*?:\p::
Gui, Add, MonthCal, vDayPick 8 gSubmit
Gui, Show
return



Submit:
Gui, Submit
FormatTime, DayPick, %DayPick%, dddd d
StringUpper, DayPick, DayPick, T
Send, %DayPick% 
Gui, Destroy
Return

:*?:;r::
Reload
return
