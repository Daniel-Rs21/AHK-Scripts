#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;InputBox, H, Horas: , , , 150, 100, , , locate

:*?:;bot::
Gui, New, -MaximizeBox -MinimizeBox,‎
Gui, Add, Text, x5 y5, Horas:
Gui, Add, Edit, x40 y5 w40 Number
Gui, Add, Button, Default x10 y35 w60 gHora, OK
Gui, Add, Button, x80 y35 w60 gCancelar, Cancel
Gui, Show
return

Hora: 
 {
	ControlGetText, th, edit1
	Gui, destroy
	
	If Errorlevel OR !th { 
		th := 0
	} Else{
		th := th * 3600
	}
	
	Gui, New, -MaximizeBox -MinimizeBox,‎
	Gui, Add, Text, x5 y5, Minutos:
	Gui, Add, Edit, x50 y5 w40 Number
	Gui, Add, Button, Default x10 y35 w60 gMinuto, OK
	Gui, Add, Button, x80 y35 w60 gCancelar, Cancel
	Gui, Show
 }
return

Minuto:
{
	ControlGetText, tm, edit1
	Gui destroy
	
	If Errorlevel OR !tm { 
		tm := 0
	} Else{
		tm := tm * 60
	}
	
	Gui, New, -MaximizeBox -MinimizeBox,‎
	Gui, Add, Text, x5 y5, Segundos:
	Gui, Add, Edit, x60 y5 w40 Number
	Gui, Add, Button, Default x10 y35 w60 gSegundo, OK
	Gui, Add, Button, x80 y35 w60 gCancelar, Cancel
	Gui, Show
}
return

Segundo:
{
	ControlGetText, ts, edit1
	Gui destroy
	
	If Errorlevel OR !ts { 
		ts := 0
	} Else{
		ts := ts + 10
	}
	
	Tiempo := th + tm + ts
	
	Gui, New, -MaximizeBox -MinimizeBox,‎
	Gui, Add, Text, x5 y5, Tiempo en seg: %Tiempo% 
	Gui, Add, Button, Default x10 y35 w60 gEmpezar, OK
	Gui, Add, Button, x80 y35 w60 gCancelar, Cancel
	Gui, Show
}
return

Empezar:
{
	Cuenta := Tiempo
	
	Gui destroy
	Gui, New, -MaximizeBox -MinimizeBox,‎
	Gui, Add, Text, x5 y5 vCuen, Recarga en: %Cuenta%
	Gui, Add, Button, x5 y35 w60 g, Cancel
	Gui, Show
	
	While(true){ 
		
		While(Cuenta > 0){			
			GuiControl, ,Cuen,%Cuenta%
	
			Cuenta := Cuenta - 1 
			
			Sleep 1000
		}
	}
	
	
}
return

Cancelar:
{
	Gui destroy
	Gui, New, -MaximizeBox -MinimizeBox,‎
	Gui, Add, Text, , Operación Cancelada
	Gui, Show 
	Sleep 2000
	ExitApp
}
return

:*?:;r::
Reload
return

:*?:;p::
Gui, Add, edit, w250 h20, Asia224 BonBon's New Lip
Gui, Add, Button, Default w100 h20, Button1
Gui, Show, x700 y120 h300 w300,
return

ButtonButton1:
ControlGetText, OutputVar , edit1 ; Control name shown by WindowSpy
MsgBox %OutputVar%
return
