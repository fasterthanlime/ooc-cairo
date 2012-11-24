
use freetype2, cairo
import freetype2
import cairo/Cairo

newFontFromFreetype: static extern(cairo_ft_font_face_create_for_ft_face) func (FTFace, Int) -> CairoFontFace


