toggled = 0

^g::
if (toggled == 0) {
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
	Gui, 1:Show, xCenter y60
} 
else {
	toggled = 0
	Gui, Destroy
}
return

^j::
ExitApp
