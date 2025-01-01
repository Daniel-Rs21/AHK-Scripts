; REMOVED: #NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode("Input") ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir(A_ScriptDir) ; Ensures a consistent starting directory.

global contador1 := 1 ; Variable global para el contador
global prefijo := ""

^d:: { ; Ctrl + V para pegar el texto
    global contador1, prefijo

    ; Mostrar InputBox solo la primera vez que se presiona Ctrl + V
    if (contador1 = 1) {
        result := InputBox("Ingrese el número inicial:", "Contador Inicial", "", "1") ; Valor predeterminado
        if (result.Result != "OK") { ; Si el usuario cancela
            MsgBox("Script cancelado.")
            ExitApp
        } else {
            contador1 := result.Value ; Asignar el valor ingresado
        }

        result := InputBox("Ingrese el prefijo:", "Contador Inicial", "", "") ; Valor predeterminado
        if (result.Result != "OK") { ; Si el usuario cancela
            MsgBox("Script cancelado.")
            ExitApp
        } else {
            prefijo := result.Value ; Asignar el valor ingresado
        }
    }

    ; Pegar el texto con formato
    texto := Format("{}{:03}", prefijo, contador1) ; Asegura tres dígitos
    SendInput(texto)
    contador1 += 1
}

global contador2 := 1 ; Variable global para el contador
global paso := 1 ; Variable global para el paso

^e:: { ; Ctrl + V para pegar el texto
    global contador2, paso

    ; Mostrar InputBox solo la primera vez que se presiona Ctrl + V
    if (contador2 = 1) {
        result := InputBox("Ingrese el número inicial:", "Contador Inicial", "", "1") ; Valor predeterminado
        if (result.Result != "OK") { ; Si el usuario cancela
            MsgBox("Script cancelado.")
            ExitApp
        } else {
            contador2 := result.Value ; Asignar el valor ingresado
        }
    }
    if (paso = 1) {
        SendInput(contador2) ; Pega el mismo número
        paso -= 1 ; Decrementa el contador del paso
    } else {
        SendInput(contador2) ; Pega el siguiente número
        contador2 += 1 ; Incrementa el contador para el siguiente número
        paso := 1 ; Reinicia el paso
    }
}

global contador3 := 1 ; Variable global para el contador

^f:: { ; Ctrl + V para pegar el texto
    global contador3

    ; Mostrar InputBox solo la primera vez que se presiona Ctrl + V
    if (contador3 = 1) {
        result := InputBox("Ingrese el número inicial:", "Contador Inicial", "", "1") ; Valor predeterminado
        if (result.Result != "OK") { ; Si el usuario cancela
            MsgBox("Script cancelado.")
            ExitApp
        } else {
            contador3 := result.Value ; Asignar el valor ingresado
        }
    }

    ; Pegar el texto con formato
    SendInput(contador3)
    contador3 += 1
}

global contador4 := 1 ; Variable global para el contador
global lado := 1 ; Variable global para el lado
global size := 1
global paso1 := 1

^a:: { ; Ctrl + V para pegar el texto
    global contador4, lado, size, paso1

    ; Mostrar InputBox solo la primera vez que se presiona Ctrl + V
    if (contador4 = 1) {
        result := InputBox("Ingrese el número inicial:", "Contador Inicial", "", "1") ; Valor predeterminado
        if (result.Result != "OK") { ; Si el usuario cancela
            MsgBox("Script cancelado.")
            ExitApp
        } else {
            contador4 := result.Value ; Asignar el valor ingresado
        }
    }
    if (size = 1) {
        result := InputBox("Ingrese el número inicial del tamaño:", "Contador Inicial", "", "1") ; Valor predeterminado
        if (result.Result != "OK") { ; Si el usuario cancela
            MsgBox("Script cancelado.")
            ExitApp
        } else {
            size := result.Value ; Asignar el valor ingresado
        }
    }

    
    text := Format("{},{},1,{},1,8,1,1", contador4, lado, size)
    ; Pegar el texto con formato
    SendInput(text)

    if (lado = 1) {
        lado := 2 ; Cambia al otro lado
    } else {
        lado := 1 ; Cambia al otro lado
    }

    if (paso1 = 1) {
        paso1 -= 1 ; Decrementa el contador del paso
    } else {
        contador4 += 1 ; Incrementa el contador para el siguiente número
        paso1 := 1 ; Reinicia el paso
    }
}

:*:\num off::
{
    ExitApp
    return
}

:*:\num rld::
{
    Reload
    return
}
