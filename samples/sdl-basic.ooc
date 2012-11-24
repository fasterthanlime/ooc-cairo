use cairo
import cairo/Cairo

use sdl
import sdl/Core

import shared/triangles
import os/Time

main: func {

    SDL init(SDL_INIT_EVERYTHING)

    (width, height) := (400, 400)
    screen := SDL setMode(width, height, 0, SDL_HWSURFACE)
    SDL wmSetCaption("cairo SDL example", null)

    sdlSurface := SDL createRgbSurface(SDL_HWSURFACE, width, height, 32,
	0x00FF0000, 0x0000FF00, 0x000000FF, 0)

    cairoSurface := CairoImageSurface new(sdlSurface@ pixels, CairoFormat RGB24,
	sdlSurface@ w, sdlSurface@ h, sdlSurface@ pitch)

    context := CairoContext new(cairoSurface)
    drawTriangles(context)

    SDL blitSurface(sdlSurface, null, screen, null)
    SDL flip(screen)

    Time sleepSec(2)

    SDL quit()

}

