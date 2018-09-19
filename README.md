# delvegrid
AHK based overlay for PoE delve map 

## Info
Delvegrid is a transparent overlay written in AHK. It shows transparent grid overlays of varying sizes. Its main purpose is to provide a visual aide when trying to identify where a hidden path is located on your subterrainean map.
Since this script uses stock functions to display the overlays, this is designed with fullscreen in mind.
It does NOT base its location off of the x,y coords of the game window. Therefor, if you wish to use this script with PoE in windows mode, you will need to create your own overlay file, as well as center the game window to the screen.

Depending on on how this project is received, I may go back and try to add windows mode support.

## Key Binds
* CTRL-G Starts the script, creating a grid overlay on the screen.
* CTRL-H Destroys the overlay. CTRL-G will create it again.
* CTRL-J Exits the script

## Naming Convention
The image overlays are named as "grid_#.gif" The "#" is replaced with a scale number.
Currently the sale number won't won't change. That is for when I can add dynamic scaling to the script.
You can replace any overlay image you want, so long as you keep the name the same.
GIF was used instead of PNG due to AHK not handling certain styles of PNG transparency.

## Creating A Custom Overlay
The easiest way to go about this is to take a screenshot of PoE and crop out everything except the delve map. Make sure to remove the border of the window, you only want to see the delve terrain when you're done. Note the current resolution of the image you are left with. This is the resolution of your new overlay.

Using a program of your choice, not Paint, start making your new overlay. Remember that your grid must be XxY (will update this once I can confirm the number). Save your overlay as grid_1.gif, put it in the same folder as this script, and you're good to go.
