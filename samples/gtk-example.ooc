use cairo, gtk

import cairo/[Cairo, GdkCairo]
import gtk/[Gtk, Widget, Window]

repaint: func (cr: CairoContext) {
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

main: func {
	win := Window new("Hai.")
	win setUSize(400, 200) .connect("delete_event", exit)
	win setAppPaintable(true)
	win connect("expose-event", ||
            cr := GdkContext new(win getWindow())
            repaint(cr)
            cr destroy()
        )
	win showAll()

	Gtk main()
}

exit: extern func
