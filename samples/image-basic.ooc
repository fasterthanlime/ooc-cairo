use cairo
import cairo/Cairo

import shared/triangles

main: func {
    (width, height) := (400, 400)

    surface := CairoImageSurface new(CairoFormat argb32, width, height)
    cr := CairoContext new(surface)
    drawTriangles(cr)
    surface writeToPng("test.png")
}
