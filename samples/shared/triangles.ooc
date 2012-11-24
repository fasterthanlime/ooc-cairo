use cairo
import cairo/Cairo

drawTriangles: func (cr: CairoContext) {

	/* code from test.ooc! */
	cr setSourceRGB(0, 0, 0)
	cr paint()

	cr setLineWidth(15)
	cr setSourceRGB(255, 0, 0)
	cr moveTo(0, -100)
	cr lineTo(100, 100)
	cr relLineTo(-200, 0)
	cr closePath()
	cr stroke()
	
}

