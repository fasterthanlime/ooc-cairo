use cairo
import cairo/Cairo

main: func {
    w := 400
    h := 400

    surface := CairoImageSurface new(CairoFormat ARGB32, w, h) /* 0 = CAIRO_FORMAT_ARGB32 */
    cr := CairoContext new(surface)

    cr setSourceRGB(0, 0, 0)
    cr paint()

    cr setLineWidth(15)
    cr setSourceRGB(255, 0, 0)
    cr moveTo(0, -100)
    cr lineTo(100, 100)
    cr relLineTo(-200, 0)
    cr closePath()
    cr stroke()

    surface writeToPng("test.png")
}
