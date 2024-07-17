// Project Space Air Craft
// Created: 2024-04-27


// show all errors
SetErrorMode (2)

// set window properties
SetWindowTitle ( "Space Air Craft" )
SetWindowSize ( 768, 1024, 0 )
SetWindowAllowResize (1) // allow the user to resize the

// set display properties
SetVirtualResolution ( 768, 1024 ) // doesn`t have to match the window
SetOrientationAllowed ( 1, 1, 1, 1 ) // allow both potrait and Landscape on mobile devices
SetSyncRate ( 30, 0 ) // 30 fps instead of 60 to save battery
SetScissor ( 0, 0, 0, 0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts ( 1 ) // since version 2.0.22 we can use nicer default fonts

LoadImage (1, "space-ship.png") //Space Ship Image
LoadImage (10, "alien-ship.png") // Alien Ship Image
LoadImage (100, "asteroid-1.png") // Asteroid 1 Image
LoadImage (101, "asteroid-2.png") // Asteroid 2 Image
LoadImage (200, "particels.png") // Asteroid Particels Image
LoadImage (1000, "background.png") // Background Image



LoadSound ( 1, "backsound.wav" )
PlaySound ( 1,60,1 )


CreateSprite (2, 1000)
SetSpriteSize (2, 768, 1024)

CreateSprite (1, 1)
SetSpriteSize (1, 100, 100)
SetSpritePosition(1, 0, GetVirtualHeight () - GetSpriteHeight(1))


SetJoystickScreenPosition(200, 800, 20) // Membuat Joystick 




do
	
    
	x = GetJoystickX() * 25 // Mengambil nilai joystick x


    SetSpritePosition(1, GetSpriteX(1) +  x, GetSpriteY(1)) // Merubah posisi sprite supaya berada di tengah layar 
    
    if(GetSpriteX(1) < 0)
		SetSpritex (1, 0)
	endif
	
	if(GetSpriteX(1) > GetVirtualWidth() - GetSpriteWidth(1))
		SetSpriteX(1, GetVirtualWidth() - GetSpriteWidth(1))
	endif	
	
	
    Print( ScreenFPS() )
    Sync()
loop
