#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#SingleInstance Force
SetBatchLines -1
#include Gdip.ahk


:*:;f::
Gui, destroy

gui, add, button, x10 y5 h25 w65 gmay, Mayúscula
gui, add, button, x85 y5 h25 w65 gmin, Minúscula

gui, add, button, x60 y40 h25 w45 gcan, Cancel

gui, show, w160
return

can:
 {
   Gui, destroy
 }
return

may:
{
Gui, destroy

gui, add, button, x5 y5 h25 w25 gmacirc, Â
gui, add, button, x35 y5 h25 w25 gmecirc, Ê
gui, add, button, x5 y35 h25 w25 gmicirc, Î
gui, add, button, x35 y35 h25 w25 gmocirc, Ô
gui, add, button, x20 y65 h25 w25 gmucirc, Û

gui, add, button, x70 y5 h25 w25 gmagrav, À
gui, add, button, x100 y5 h25 w25 gmegrav, È
gui, add, button, x85 y35 h25 w25 gmugrav, Ù

gui, add, button, x135 y5 h25 w25 gmedier, Ë
gui, add, button, x165 y5 h25 w25 gmidier, Ï
gui, add, button, x135 y35 h25 w25 gmudier, Ü
gui, add, button, x165 y35 h25 w25 gmydier, Ÿ

gui, add, button, x200 y5 h25 w25 gmccedi, Ç

gui, add, button, x200 y35 h25 w25 gmsend, S

gui, add, button, x85 y95 h25 w50 gcan, Cancel
gui, show, w230, ‎Daniel Rs
return

;;;;;;;;;;Circunflejos;;;;;;;;;
macirc: 
 {
   Gui, destroy
   Send Â
 }
return
mecirc: 
 {
   Gui, destroy
   Send Ê
 }
return
micirc: 
 {
   Gui, destroy
   Send Î
 }
return
mocirc: 
 {
   Gui, destroy
   Send Ô
 }
return
mucirc: 
 {
   Gui, destroy
   Send Û
 }
return

;;;;;;;;;Graves;;;;;;;;;
magrav: 
 {
   Gui, destroy
   Send À
 }
return
megrav: 
 {
   Gui, destroy
   Send È
 }
return
mugrav: 
 {
   Gui, destroy
   Send Ù
 }
return

;;;;;;;;;Diéresis;;;;;;;;;
medier: 
 {
   Gui, destroy
   Send Ë
 }
return
midier: 
 {
   Gui, destroy
   Send Ï
 }
return
mudier: 
 {
   Gui, destroy
   Send Ü
 }
return
mydier: 
 {
   Gui, destroy
   Send Ÿ
 }
return

;;;;;;;;;Cedilla;;;;;;;;;
mccedi: 
 {
   Gui, destroy
   Send Ç
 }
return
msend: 
 {
Gui, destroy
 
pToken := Gdip_Startup()
OnExit, Exit

Gui, Add, Picture, hwndhwndGif1 w270 h490
Gui, Show,, ‎

gif1 := new Gif("se.gif", hwndGif1)

isPlaying := gif1.isPlaying
GuiControl,, % hwndPlayPause, % (isPlaying) ? "Play" : "Pause"
gif1.Play()
return

;######################################################

Exit:
Gdip_ShutDown(pToken)
ExitApp
return

;######################################################

class Gif
{	
	__New(file, hwnd, autoPlay := false)
	{
		this.file := file
		this.hwnd := hwnd
		this.isPlaying := false
		this.pBitmap := Gdip_CreateBitmapFromFile(this.file)

		; Gdip_GetImageDimensions(this.pBitmap, width, height)
		ControlGetPos,,, width, height,, ahk_id %hwnd%
		this.width := width, this.height := height

		DllCall("Gdiplus\GdipCreateFromHWND", "ptr", hwnd, "ptrp", pGraphics)
		this.pGraphics := pGraphics
		
		DllCall("Gdiplus\GdipImageGetFrameDimensionsCount", "ptr", this.pBitmap, "uptr*", frameDimensions)
		this.SetCapacity("dimensionIDs", 32)
		DllCall("Gdiplus\GdipImageGetFrameDimensionsList", "ptr", this.pBitmap, "uptr", this.GetAddress("dimensionIDs"), "int", frameDimensions)
		DllCall("Gdiplus\GdipImageGetFrameCount", "ptr", this.pBitmap, "uptr", this.GetAddress("dimensionIDs"), "int*", count)
		this.frameCount := count
		this.frameCurrent := -1
		this.frameDelay := this.GetFrameDelay(this.pBitmap)

		if autoPlay
			this.play()
	}

	; Return a zero-based array, containing the frames delay (in milliseconds)
	GetFrameDelay(pImage) {
		static PropertyTagFrameDelay := 0x5100

		DllCall("Gdiplus\GdipGetPropertyItemSize", "Ptr", pImage, "UInt", PropertyTagFrameDelay, "UInt*", ItemSize)
		VarSetCapacity(Item, ItemSize, 0)
		DllCall("Gdiplus\GdipGetPropertyItem"    , "Ptr", pImage, "UInt", PropertyTagFrameDelay, "UInt", ItemSize, "Ptr", &Item)

		PropLen := NumGet(Item, 4, "UInt")
		PropVal := NumGet(Item, 8 + A_PtrSize, "UPtr")

		outArray := []
		Loop, % PropLen//4 {
			if !n := NumGet(PropVal+0, (A_Index-1)*4, "UInt")
				n := 10
			outArray[A_Index-1] := n * 10
		}
		return outArray
	}
	
	Play()
	{
		this.isPlaying := true
		fn := this._Play.Bind(this)
		this._fn := fn
		SetTimer, % fn, -1
	}
	
	Pause()
	{
		this.isPlaying := false
		fn := this._fn
		SetTimer, % fn, Delete
	}
	
	_Play()
	{
		this.frameCurrent := (this.frameCurrent = this.frameCount-1) ? 0 : this.frameCurrent + 1
		DllCall("Gdiplus\GdipImageSelectActiveFrame", "ptr", this.pBitmap, "uptr", this.GetAddress("dimensionIDs"), "int", this.frameCurrent)

		; hBitmap := Gdip_CreateHBITMAPFromBitmap(this.pBitmap)
		; SetImage(this.hwnd, hBitmap)
		; DeleteObject(hBitmap)
		DllCall("gdiplus\GdipDrawImageRectI", "ptr", this.pGraphics, "ptr", this.pBitmap
        , "int", 0, "int", 0, "int", this.width, "int", this.height)

		fn := this._fn
		SetTimer, % fn, % -1 * this.frameDelay[this.frameCurrent]
	}
	
	__Delete()
	{
		Gdip_DisposeImage(this.pBitmap)
		Gdip_DeleteGraphics(this.pGraphics)
		Object.Delete("dimensionIDs")
	}
}
 }
return

return
}
return

min:
{
gui, destroy 

gui, add, button, x5 y5 h25 w25 gacirc, â
gui, add, button, x35 y5 h25 w25 gecirc, ê
gui, add, button, x5 y35 h25 w25 gicirc, î
gui, add, button, x35 y35 h25 w25 gocirc, ô
gui, add, button, x20 y65 h25 w25 gucirc, û

gui, add, button, x70 y5 h25 w25 gagrav, à
gui, add, button, x100 y5 h25 w25 gegrav, è
gui, add, button, x85 y35 h25 w25 gugrav, ù

gui, add, button, x135 y5 h25 w25 gedier, ë
gui, add, button, x165 y5 h25 w25 gidier, ï
gui, add, button, x135 y35 h25 w25 gudier, ü
gui, add, button, x165 y35 h25 w25 gydier, ÿ

gui, add, button, x200 y5 h25 w25 gccedi, ç

gui, add, button, x200 y35 h25 w25 gmsend, s

gui, add, button, x85 y95 h25 w50 gcan, Cancel
gui, show, w230, ‎Daniel Rs
return

;;;;;;;;;;Circunflejos;;;;;;;;;
acirc: 
 {
   Gui, destroy
   Send â
 }
return
ecirc: 
 {
   Gui, destroy
   Send ê
 }
return
icirc: 
 {
   Gui, destroy
   Send î
 }
return
ocirc: 
 {
   Gui, destroy
   Send ô
 }
return
ucirc: 
 {
   Gui, destroy
   Send û
 }
return

;;;;;;;;;Graves;;;;;;;;;
agrav: 
 {
   Gui, destroy
   Send à
 }
return
egrav: 
 {
   Gui, destroy
   Send è
 }
return
ugrav: 
 {
   Gui, destroy
   Send ù
 }
return

;;;;;;;;;Diéresis;;;;;;;;;
edier: 
 {
   Gui, destroy
   Send ë
 }
return
idier: 
 {
   Gui, destroy
   Send ï
 }
return
udier: 
 {
   Gui, destroy
   Send ü
 }
return
ydier: 
 {
   Gui, destroy
   Send ÿ
 }
return

;;;;;;;;;Cedilla;;;;;;;;;
ccedi: 
 {
   Gui, destroy
   Send ç
 }
return

return
}
return
