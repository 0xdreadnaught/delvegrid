toggled = 0

^v::
WinGetTitle, Title, A
if (Title == "Path of Exile") {
	WinGetPos, X, Y, Width, Height, A
	centerX := (Width-X)/2
	leftCornerX := centerX-529
	leftCornerY := 60

	SendInput, v
	Sleep, 50

	PixelGetColor, color, leftCornerX, leftCornerY

	if(color == 0x423028){
		if(toggled == 0){
			toggled = 1
			scale = 1
			prefix = grid_
			suffix = .gif
			target := prefix . scale . suffix
			SendMode Input
			SetWorkingDir %A_ScriptDir%
			Gui, 1:Color, ffffff
			Gui, +LastFound +AlwaysOnTop +ToolWindow -Caption
			WinSet, TransColor, ffffff
			Gui, 1:Add, Picture, width height +BackgroundTrans vT1, %target%
			Gui, 1:Show, xCenter y60 NA
		}
	} else {
		if(toggled == 1) {
			toggled = 0
			Gui, Destroy
		}
	}
}
return

^j::
ExitApp
