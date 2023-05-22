#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

:*?:\imagen::
InputBox, Fil, File: , , , 150, 100, , , locate
InputBox, Cap, Caption: , , , 150, 100, , , locate
if ErrorLevel{
	Send ^{BS}
	}
else {	
	Send ^{BS}
	Send,
(
{Raw}
\begin{figure}[H]
\centering
\includegraphics[width = 10cm]{%Fil%.jpg}
\caption{%Cap%}
\label{%Fil%}
\end{figure}
)
     }
return



:*:\esp::\hspace{{}-.6cm{}} &&=


:*:\color::
Gui, Add, ListBox, r3 vCol gselect, red|blue|orange
Gui, show
return 

select: 
 {
global Col
Gui, Submit, NoHide
gui, destroy
InputBox, Tex, Text: , , , 150, 100, , , locate
SendRaw \textcolor{%Col%}{%Tex%} 
 }
return
return


:*:\codi::
InputBox, Num1, Número 1: , , , 150, 100, , , locate
if ErrorLevel{
	Send {BS}
	}
else {	
	SendRaw,
(
\begin{center}
\codigo{Código %Num1%}
\end{center}
\lstinputlisting{C%Num1%s201865361.m}
)
	}	
return




:*:\res::
InputBox, Ecu, Ecuación: , , , 150, 100, , , locate
if ErrorLevel{
	Send ^{BS}
	}
else {	
	SendRaw,
(
\textcolor{rojo}{\boxed{%Ecu%}}
)
	}	
return

:*:\refe::
InputBox, Ref, Referencia: , , , 150, 100, , , locate
if ErrorLevel{
	
	}
else {	
	SendRaw,
(
\textcolor{blue}{\ref{e%Ref%}}
)
	}	
return


:*:\deb0::{Raw}\underline{e^{-s(0)}}{ }_{1}
:*:\debi::{Raw}\underline{e^{-s(\infty)}}{ }_{0}
:*:\b3::\ejemp{{}\textcolor{{}teje{}}{{}\usetagform{{}taej{}}{}}{}}{Left}{Left}

:*:\cent::\begin{{}center{}}{ENTER}{ENTER}\end{{}center{}}{UP}
:*:\eqna::\begin{{}eqnarray{}}{ENTER}{ENTER}\end{{}eqnarray{}}{UP}
:*:\alig::\begin{{}equation{}}{ENTER}\begin{{}aligned{}}{ENTER}{ENTER}\end{{}aligned{}}{ENTER}\end{{}equation{}}{UP}{UP}
:*:\b2::\obser{{}{}}{Left}
:*:\tres::\usetagform{{}res{}}
:*:\sty::\displaystyle


:*:\{::\left\{{}
:*:\}::\right\{}}
:*:\[::\left[
:*:\]::\right]
:*:\(::\left(
:*:\)::\right)
:*:\lapp::\mathcal{{}L{}}
:*:\lapi::\mathcal{{}L{}}{^}{{}-1{}}

:*:\seno::{RAW}\operatorname{sen}

:*:\escalar::\scaleto{{}{}}{{}{}}{LEFT}{LEFT}{LEFT}


:*:\tm off::
ExitApp
return
