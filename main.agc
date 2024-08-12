// Project: projet agk

// Created: 2024-04-26
// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( " PROJECT AGK" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts


LoadImage(1,"luar.jpg") // Load Gambar di Folder media, ID Image = 1

CreateSprite(1,1) // Membuat Sprite dari Gambar 1, ID Sprite = 1
setSpriteScale(1, 0.2, 0.2) // Merubah Ukuran Sprite ID 1
SetSpriteSize(1, 200, 200) // selain menggunakan scale ukuran sprite juga bisa dirubah dengan sintax

// Merubah posisi sprite supaya berada ditengah layar
SetSpritePosition(1, (1024 / 2) - (GetSpriteWidth(1) / 2), (768 / 2) - (GetSpriteHeight(1)/ 2))

SetJoystickScreenPosition(200, 800, 20) // Membuat Joystick

do
    
    x = GetJoystickX() * 4 // Mengambil nilai joystick x
    y = GetJoystickY() * 4 // Mengambil nilai joystick y
    
    SetSpritePosition(1, GetSpriteX(1) + x, GetSpriteY(1) + y) // Merubah posisi ID Sprite 1 ke posisi yang lain
    
    Print( ScreenFPS() )
    Sync()
    
loop
