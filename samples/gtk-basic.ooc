use cairo, gtk

import cairo/[Cairo, GdkCairo]
import gtk/[Gtk, Widget, Window]

import shared/triangles

main: func {
	win := Window new("cairo GTK example")
	win setUSize(400, 400) .connect("delete_event", exit)
	win setAppPaintable(true)
	win connect("expose-event", ||
            cr := GdkContext new(win getWindow())
	    drawTriangles(cr)
            cr destroy()
        )
	win showAll()

	Gtk main()
}

