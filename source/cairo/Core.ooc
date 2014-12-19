include cairo

use cairo

CairoStatus: enum {
    success                = CAIRO_STATUS_SUCCESS
    noMemory               = CAIRO_STATUS_NO_MEMORY
    invalidRestore         = CAIRO_STATUS_INVALID_RESTORE
    invalidPopGroup        = CAIRO_STATUS_INVALID_POP_GROUP
    noCurrentPoint         = CAIRO_STATUS_NO_CURRENT_POINT
    invalidMatrix          = CAIRO_STATUS_INVALID_MATRIX
    invalidStatus          = CAIRO_STATUS_INVALID_STATUS
    nullPointer            = CAIRO_STATUS_NULL_POINTER
    invalidString          = CAIRO_STATUS_INVALID_STRING
    invalidPathData        = CAIRO_STATUS_INVALID_PATH_DATA
    readError              = CAIRO_STATUS_READ_ERROR
    writeError             = CAIRO_STATUS_WRITE_ERROR
    surfaceFinished        = CAIRO_STATUS_SURFACE_FINISHED
    surfaceTypeMismatch    = CAIRO_STATUS_SURFACE_TYPE_MISMATCH
    patternTypeMismatch    = CAIRO_STATUS_PATTERN_TYPE_MISMATCH
    invalidContent         = CAIRO_STATUS_INVALID_CONTENT
    invalidFormat          = CAIRO_STATUS_INVALID_FORMAT
    invalidVisual          = CAIRO_STATUS_INVALID_VISUAL
    fileNotFound           = CAIRO_STATUS_FILE_NOT_FOUND
    invalidDash            = CAIRO_STATUS_INVALID_DASH
    invalidDscComment      = CAIRO_STATUS_INVALID_DSC_COMMENT
    invalidIndex           = CAIRO_STATUS_INVALID_INDEX
    clipNotRepresentable   = CAIRO_STATUS_CLIP_NOT_REPRESENTABLE
    tempFileError          = CAIRO_STATUS_TEMP_FILE_ERROR
    invalidStride          = CAIRO_STATUS_INVALID_STRIDE
    fontTypeMismatch       = CAIRO_STATUS_FONT_TYPE_MISMATCH
    userFontImmutable      = CAIRO_STATUS_USER_FONT_IMMUTABLE
    userFontError          = CAIRO_STATUS_USER_FONT_ERROR
    negativeCount          = CAIRO_STATUS_NEGATIVE_COUNT
    invalidClusters        = CAIRO_STATUS_INVALID_CLUSTERS
    invalidSlant           = CAIRO_STATUS_INVALID_SLANT
    invalidWeight          = CAIRO_STATUS_INVALID_WEIGHT
    invalidSize            = CAIRO_STATUS_INVALID_SIZE
    userFontNotImplemented = CAIRO_STATUS_USER_FONT_NOT_IMPLEMENTED
    deviceTypeMismatch     = CAIRO_STATUS_DEVICE_TYPE_MISMATCH
    deviceError            = CAIRO_STATUS_DEVICE_ERROR
    lastStatus             = CAIRO_STATUS_LAST_STATUS
}

CairoContent: enum {
    color        = CAIRO_CONTENT_COLOR
    alpha        = CAIRO_CONTENT_ALPHA
    colorAlpha   = CAIRO_CONTENT_COLOR_ALPHA
}

CairoSurfaceType: enum {
    image          = CAIRO_SURFACE_TYPE_IMAGE
    pdf            = CAIRO_SURFACE_TYPE_PDF
    ps             = CAIRO_SURFACE_TYPE_PS
    xlib           = CAIRO_SURFACE_TYPE_XLIB
    xcb            = CAIRO_SURFACE_TYPE_XCB
    glitz          = CAIRO_SURFACE_TYPE_GLITZ
    quartz         = CAIRO_SURFACE_TYPE_QUARTZ
    win32          = CAIRO_SURFACE_TYPE_WIN32
    beos           = CAIRO_SURFACE_TYPE_BEOS
    directfb       = CAIRO_SURFACE_TYPE_DIRECTFB
    svg            = CAIRO_SURFACE_TYPE_SVG
    os2            = CAIRO_SURFACE_TYPE_OS2
    win32Printing  = CAIRO_SURFACE_TYPE_WIN32_PRINTING
    quartzImage    = CAIRO_SURFACE_TYPE_QUARTZ_IMAGE
    script         = CAIRO_SURFACE_TYPE_SCRIPT
    qt             = CAIRO_SURFACE_TYPE_QT
    recording      = CAIRO_SURFACE_TYPE_RECORDING
    vg             = CAIRO_SURFACE_TYPE_VG
    gl             = CAIRO_SURFACE_TYPE_GL
    drm            = CAIRO_SURFACE_TYPE_DRM
    tee            = CAIRO_SURFACE_TYPE_TEE
    xml            = CAIRO_SURFACE_TYPE_XML
    skia           = CAIRO_SURFACE_TYPE_SKIA
    subsurface     = CAIRO_SURFACE_TYPE_SUBSURFACE
}

CairoOperator: enum {
    clear         = CAIRO_OPERATOR_CLEAR

    source        = CAIRO_OPERATOR_SOURCE
    over          = CAIRO_OPERATOR_OVER
    in            = CAIRO_OPERATOR_IN
    out           = CAIRO_OPERATOR_OUT
    atop          = CAIRO_OPERATOR_ATOP

    dest          = CAIRO_OPERATOR_DEST
    destOver      = CAIRO_OPERATOR_DEST_OVER
    destIn        = CAIRO_OPERATOR_DEST_IN
    destOut       = CAIRO_OPERATOR_DEST_OUT
    destAtop      = CAIRO_OPERATOR_DEST_ATOP

    xor           = CAIRO_OPERATOR_XOR
    add           = CAIRO_OPERATOR_ADD
    saturate      = CAIRO_OPERATOR_SATURATE

    multiply      = CAIRO_OPERATOR_MULTIPLY
    screen        = CAIRO_OPERATOR_SCREEN
    overlay       = CAIRO_OPERATOR_OVERLAY
    darken        = CAIRO_OPERATOR_DARKEN
    lighten       = CAIRO_OPERATOR_LIGHTEN
    colorDodge    = CAIRO_OPERATOR_COLOR_DODGE
    colorBurn     = CAIRO_OPERATOR_COLOR_BURN
    hardLight     = CAIRO_OPERATOR_HARD_LIGHT
    softLight     = CAIRO_OPERATOR_SOFT_LIGHT
    difference    = CAIRO_OPERATOR_DIFFERENCE
    exclusion     = CAIRO_OPERATOR_EXCLUSION
    hslHue        = CAIRO_OPERATOR_HSL_HUE
    hslSaturation = CAIRO_OPERATOR_HSL_SATURATION
    hslColor      = CAIRO_OPERATOR_HSL_COLOR
    hslLuminosity = CAIRO_OPERATOR_HSL_LUMINOSITY
}

CairoAntialias: enum {
    default_ = CAIRO_ANTIALIAS_DEFAULT
    none     = CAIRO_ANTIALIAS_NONE
    gray     = CAIRO_ANTIALIAS_GRAY
    subpixel = CAIRO_ANTIALIAS_SUBPIXEL
}

CairoSubPixelOrder: enum {
    default_ = CAIRO_SUBPIXEL_ORDER_DEFAULT
    rgb      = CAIRO_SUBPIXEL_ORDER_RGB
    bgr      = CAIRO_SUBPIXEL_ORDER_BGR
    vrgb     = CAIRO_SUBPIXEL_ORDER_VRGB
    vbgr     = CAIRO_SUBPIXEL_ORDER_VBGR
}

CairoFillRule: enum {
    winding = CAIRO_FILL_RULE_WINDING
    evenOdd = CAIRO_FILL_RULE_EVEN_ODD
}

CairoLineCap: enum {
    butt   = CAIRO_LINE_CAP_BUTT
    round  = CAIRO_LINE_CAP_ROUND
    square = CAIRO_LINE_CAP_SQUARE
}

CairoLineJoin: enum {
    miter = CAIRO_LINE_JOIN_MITER
    round = CAIRO_LINE_JOIN_ROUND
    bevel = CAIRO_LINE_JOIN_BEVEL
}

CairoFontSlant: enum {
    normal  = CAIRO_FONT_SLANT_NORMAL
    italic  = CAIRO_FONT_SLANT_ITALIC
    oblique = CAIRO_FONT_SLANT_OBLIQUE
}

CairoFontWeight: enum {
    normal = CAIRO_FONT_WEIGHT_NORMAL
    bold   = CAIRO_FONT_WEIGHT_BOLD
}

CairoTextClusterFlags: enum {
    backward = CAIRO_TEXT_CLUSTER_FLAG_BACKWARD
}

CairoPatternType: enum {
    solid   = CAIRO_PATTERN_TYPE_SOLID
    surface = CAIRO_PATTERN_TYPE_SURFACE
    linear  = CAIRO_PATTERN_TYPE_LINEAR
    radial  = CAIRO_PATTERN_TYPE_RADIAL
}

CairoExtend: enum {
    none    = CAIRO_EXTEND_NONE
    repeat  = CAIRO_EXTEND_REPEAT
    reflect = CAIRO_EXTEND_REFLECT
    pad     = CAIRO_EXTEND_PAD
}

CairoFilter: enum {
    fast     = CAIRO_FILTER_FAST
    good     = CAIRO_FILTER_GOOD
    best     = CAIRO_FILTER_BEST
    nearest  = CAIRO_FILTER_NEAREST
    bilinear = CAIRO_FILTER_BILINEAR
    gaussian = CAIRO_FILTER_GAUSSIAN
}

CairoFontType: enum {
    toy    = CAIRO_FONT_TYPE_TOY
    ft     = CAIRO_FONT_TYPE_FT
    win32  = CAIRO_FONT_TYPE_WIN32
    quartz = CAIRO_FONT_TYPE_QUARTZ
    user   = CAIRO_FONT_TYPE_USER
}

CairoHintStyle: enum {
    default_ = CAIRO_HINT_STYLE_DEFAULT
    none     = CAIRO_HINT_STYLE_NONE
    slight   = CAIRO_HINT_STYLE_SLIGHT
    medium   = CAIRO_HINT_STYLE_MEDIUM
    full     = CAIRO_HINT_STYLE_FULL
}

CairoHintMetrics: enum {
    default_ = CAIRO_HINT_METRICS_DEFAULT
    off      = CAIRO_HINT_METRICS_OFF
    on       = CAIRO_HINT_METRICS_ON
}

CairoFormat: enum {
    invalid   = CAIRO_FORMAT_INVALID
    argb32    = CAIRO_FORMAT_ARGB32
    rgb24     = CAIRO_FORMAT_RGB24
    a8        = CAIRO_FORMAT_A8
    a1        = CAIRO_FORMAT_A1
    rgb16_565 = CAIRO_FORMAT_RGB16_565
}


cairo_user_data_key_t: extern cover
CairoUserDataKeyStruct: cover from cairo_user_data_key_t { }

CairoUserDataKey: cover from CairoUserDataKeyStruct* {
    new: static func -> This {
        gc_malloc(CairoUserDataKeyStruct size) as CairoUserDataKey
    }
}

CairoRectangle: cover from cairo_rectangle_t {
    x, y, width, height: extern Int
}

CairoTextCluster: cover from cairo_text_cluster_t* {
    numBytes: extern(num_bytes) Int
    numGlyphs: extern(num_glyphs) Int
}

CairoRectangleList: cover from cairo_rectangle_list_t* {
    status: extern CairoStatus
    rectangles: extern CairoRectangle*
    numRectangles: extern(num_rectangles) Int
}

CairoTextExtents: cover from cairo_text_extents_t {
    xBearing: extern(x_bearing) Double
    yBearing: extern(y_bearing) Double
    width, height: extern Double
    xAdvance: extern(x_advance) Double
    yAdvance: extern(y_advance) Double
}

CairoFontExtents: cover from cairo_font_extents_t* {
    ascent, descent, height: extern Double
    maxXAdvance: extern(max_x_advance) Double
    maxYAdvance: extern(max_y_advance) Double
}

CairoContext: cover from cairo_t* {
    new: extern(cairo_create) static func (target: CairoSurface) -> CairoContext
    reference: extern(cairo_reference) func -> CairoContext
    destroy: extern(cairo_destroy) func
    getReferenceCount: extern(cairo_get_reference_count) func -> UInt
    getUserData: extern(cairo_get_user_data) func (key: CairoUserDataKey) -> Void*
    setUserData: extern(cairo_set_user_data) func (key: CairoUserDataKey, userData: Void*, destroy: Func) -> CairoStatus
    save: extern(cairo_save) func
    restore: extern(cairo_restore) func
    pushGroup: extern(cairo_push_group) func
    pushGroupWithContent: extern(cairo_push_group_with_content) func (content: CairoContent)
    popGroup: extern(cairo_pop_group) func -> CairoPattern
    popGroupToSource: extern(cairo_pop_group_to_source) func
    setOperator: extern(cairo_set_operator) func (op: CairoOperator)
    setSource: extern(cairo_set_source) func (source: CairoPattern)
    setSourceRGB: extern(cairo_set_source_rgb) func (red: Double, green: Double, blue: Double)
    setSourceRGBA: extern(cairo_set_source_rgba) func (red: Double, green: Double, blue: Double, alpha: Double)
    setSourceSurface: extern(cairo_set_source_surface) func (surface: CairoSurface, x: Double, y: Double)
    setTolerance: extern(cairo_set_tolerance) func (tolerance: Double)
    setAntialias: extern(cairo_set_antialias) func (antialias: CairoAntialias)
    setFillRule: extern(cairo_set_fill_rule) func (fillRule: CairoFillRule)
    setLineWidth: extern(cairo_set_line_width) func (width: Double)
    setLineCap: extern(cairo_set_line_cap) func (lineCap: CairoLineCap)
    setLineJoin: extern(cairo_set_line_join) func (lineJoin: CairoLineJoin)
    setDash: extern(cairo_set_dash) func (dashes: Double*, numDashes: Int, offset: Double)
    setMiterLimit: extern(cairo_set_miter_limit) func (limit: Double)
    translate: extern(cairo_translate) func (tx: Double, ty: Double)
    scale: extern(cairo_scale) func (sx: Double, sy: Double)
    rotate: extern(cairo_rotate) func (angle: Double)
    transform: extern(cairo_transform) func (matrix: CairoMatrix)
    setMatrix: extern(cairo_set_matrix) func (matrix: CairoMatrix)
    identityMatrix: extern(cairo_identity_matrix) func
    userToDevice: extern(cairo_user_to_device) func (x: Double*, y: Double*)
    userToDeviceDistance: extern(cairo_user_to_device_distance) func (dx: Double*, dy: Double*)
    deviceToUser: extern(cairo_device_to_user) func (x: Double*, y: Double*)
    deviceToUserDistance: extern(cairo_device_to_user_distance) func (dx: Double*, dy: Double*)
    newPath: extern(cairo_new_path) func
    moveTo: extern(cairo_move_to) func (x: Double, y: Double)
    newSubPath: extern(cairo_new_sub_path) func
    lineTo: extern(cairo_line_to) func (x: Double, y: Double)
    curveTo: extern(cairo_curve_to) func (x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double)
    arc: extern(cairo_arc) func (xc: Double, yc: Double, radius: Double, angle1: Double, angle2: Double)
    arcNegative: extern(cairo_arc_negative) func (xc: Double, yc: Double, radius: Double, angle1: Double, angle2: Double)
    relMoveTo: extern(cairo_rel_move_to) func (dx: Double, dy: Double)
    relLineTo: extern(cairo_rel_line_to) func (dx: Double, dy: Double)
    relCurveTo: extern(cairo_rel_curve_to) func (dx1: Double, dy1: Double, dx2: Double, dy2: Double, dx3: Double, dy3: Double)
    rectangle: extern(cairo_rectangle) func (x: Double, y: Double, width: Double, height: Double)
    closePath: extern(cairo_close_path) func
    paint: extern(cairo_paint) func
    paintWithAlpha: extern(cairo_paint_with_alpha) func (alpha: Double)
    mask: extern(cairo_mask) func (pattern: CairoPattern)
    maskSurface: extern(cairo_mask_surface) func (surface: CairoSurface, surfaceX: Double, surfaceY: Double)
    stroke: extern(cairo_stroke) func
    strokePreserve: extern(cairo_stroke_preserve) func
    fill: extern(cairo_fill) func
    fillPreserve: extern(cairo_fill_preserve) func
    copyPage: extern(cairo_copy_page) func
    showPage: extern(cairo_show_page) func
    inStroke: extern(cairo_in_stroke) func (x: Double, y: Double) -> Bool
    inFill: extern(cairo_in_fill) func (x: Double, y: Double) -> Bool
    strokeExtents: extern(cairo_stroke_extents) func (x1: Double*, y1: Double*, x2: Double*, y2: Double*)
    fillExtents: extern(cairo_fill_extents) func (x1: Double*, y1: Double*, x2: Double*, y2: Double*)
    resetClip: extern(cairo_reset_clip) func
    clip: extern(cairo_clip) func
    clipPreserve: extern(cairo_clip_preserve) func
    clipExtents: extern(cairo_clip_extents) func (x1: Double*, y1: Double*, x2: Double*, y2: Double*)
    copyClipRectangleList: extern(cairo_copy_clip_rectangle_list) func -> CairoRectangleList*
    selectFontFace: extern(cairo_select_font_face) func (family: Char*, slant: CairoFontSlant, weight: CairoFontWeight)
    setFontSize: extern(cairo_set_font_size) func (size: Double)
    setFontMatrix: extern(cairo_set_font_matrix) func (matrix: CairoMatrix)
    getFontMatrix: extern(cairo_get_font_matrix) func (matrix: CairoMatrix)
    setFontOptions: extern(cairo_set_font_options) func (options: CairoFontOptions)
    getFontOptions: extern(cairo_get_font_options) func (options: CairoFontOptions)
    setFontFace: extern(cairo_set_font_face) func (fontFace: CairoFontFace)
    getFontFace: extern(cairo_get_font_face) func -> CairoFontFace
    setScaledFont: extern(cairo_set_scaled_font) func (scaledFont: CairoScaledFont)
    getScaledFont: extern(cairo_get_scaled_font) func -> CairoScaledFont
    showText: extern(cairo_show_text) func (utf8: Char*)
    showGlyphs: extern(cairo_show_glyphs) func (glyphs: CairoGlyph, numGlyphs: Int)
    showTextGlyphs: extern(cairo_show_text_glyphs) func (utf8: Char*, utf8Len: Int, glyphs: CairoGlyph, numGlyphs: Int, clusters: CairoTextCluster, numClusters: Int, clusterFlags: CairoTextClusterFlags)
    textPath: extern(cairo_text_path) func (utf8: Char*)
    glyphPath: extern(cairo_glyph_path) func (glyphs: CairoGlyph, numGlyphs: Int)
    textExtents: extern(cairo_text_extents) func (utf8: Char*, extents: CairoTextExtents*)
    glyphExtents: extern(cairo_glyph_extents) func (glyphs: CairoGlyph, numGlyphs: Int, extents: CairoTextExtents*)
    fontExtents: extern(cairo_font_extents) func (extents: CairoFontExtents)
    getOperator: extern(cairo_get_operator) func -> CairoOperator
    getSource: extern(cairo_get_source) func -> CairoPattern
    getTolerance: extern(cairo_get_tolerance) func -> Double
    getAntialias: extern(cairo_get_antialias) func -> CairoAntialias
    hasCurrentPoint: extern(cairo_has_current_point) func -> Bool
    getCurrentPoint: extern(cairo_get_current_point) func (x: Double*, y: Double*)
    getFillRule: extern(cairo_get_fill_rule) func -> CairoFillRule
    getLineWidth: extern(cairo_get_line_width) func -> Double
    getLineCap: extern(cairo_get_line_cap) func -> CairoLineCap
    getLineJoin: extern(cairo_get_line_join) func -> CairoLineJoin
    getMiterLimit: extern(cairo_get_miter_limit) func -> Double
    getDashCount: extern(cairo_get_dash_count) func -> Int
    getDash: extern(cairo_get_dash) func (dashes: Double*, offset: Double*)
    getMatrix: extern(cairo_get_matrix) func (matrix: CairoMatrix)
    getTarget: extern(cairo_get_target) func -> CairoSurface
    getGroupTarget: extern(cairo_get_group_target) func -> CairoSurface
    copyPath: extern(cairo_copy_path) func -> CairoPath
    copyPathFlat: extern(cairo_copy_path_flat) func -> CairoPath
    appendPath: extern(cairo_append_path) func (path: CairoPath)
    status: extern(cairo_status) func -> CairoStatus
}

CairoPath: cover from cairo_path_t* {
    extents: extern(cairo_path_extents) func (x1: Double*, y1: Double*, x2: Double*, y2: Double*)
    destroy: extern(cairo_path_destroy) func
}

CairoPattern: cover from cairo_pattern_t* {
    new: extern(cairo_pattern_create_rgb) static func ~rgb (red: Double, green: Double, blue: Double) -> CairoPattern
    new: extern(cairo_pattern_create_rgba) static func ~rgba (red: Double, green: Double, blue: Double, alpha: Double) -> CairoPattern
    new: extern(cairo_pattern_create_for_surface) static func ~forSurface (surface: CairoSurface) -> CairoPattern
    new: extern(cairo_pattern_create_linear) static func ~linear (x0: Double, y0: Double, x1: Double, y1: Double) -> CairoPattern
    new: extern(cairo_pattern_create_radial) static func ~radial (cx0: Double, cy0: Double, radius0: Double, cx1: Double, cy1: Double, radius1: Double) -> CairoPattern
    reference: extern(cairo_pattern_reference) func -> CairoPattern
    destroy: extern(cairo_pattern_destroy) func
    getReferenceCount: extern(cairo_pattern_get_reference_count) func -> UInt
    status: extern(cairo_pattern_status) func -> CairoStatus
    getUserData: extern(cairo_pattern_get_user_data) func (key: CairoUserDataKey) -> Void*
    setUserData: extern(cairo_pattern_set_user_data) func (key: CairoUserDataKey, userData: Void*, destroy: Func) -> CairoStatus
    getType: extern(cairo_pattern_get_type) func -> CairoPatternType
    addColorStopRGB: extern(cairo_pattern_add_color_stop_rgb) func (offset: Double, red: Double, green: Double, blue: Double)
    addColorStopRGBa: extern(cairo_pattern_add_color_stop_rgba) func (offset: Double, red: Double, green: Double, blue: Double, alpha: Double)
    setMatrix: extern(cairo_pattern_set_matrix) func (matrix: CairoMatrix)
    getMatrix: extern(cairo_pattern_get_matrix) func (matrix: CairoMatrix)
    setExtend: extern(cairo_pattern_set_extend) func (extend: CairoExtend)
    getExtend: extern(cairo_pattern_get_extend) func -> CairoExtend
    setFilter: extern(cairo_pattern_set_filter) func (filter: CairoFilter)
    getFilter: extern(cairo_pattern_get_filter) func -> CairoFilter
    getRGBA: extern(cairo_pattern_get_rgba) func (red: Double*, green: Double*, blue: Double*, alpha: Double*) -> CairoStatus
    getSurface: extern(cairo_pattern_get_surface) func (surface: CairoSurface*) -> CairoStatus
    getColorStopRGBa: extern(cairo_pattern_get_color_stop_rgba) func (index: Int, offset: Double*, red: Double*, green: Double*, blue: Double*, alpha: Double*) -> CairoStatus
    getColorStopCount: extern(cairo_pattern_get_color_stop_count) func (count: Int*) -> CairoStatus
    getLinearPoints: extern(cairo_pattern_get_linear_points) func (x0: Double*, y0: Double*, x1: Double*, y1: Double*) -> CairoStatus
    getRadialCircles: extern(cairo_pattern_get_radial_circles) func (x0: Double*, y0: Double*, r0: Double*, x1: Double*, y1: Double*, r1: Double*) -> CairoStatus
}

CairoFontFace: cover from cairo_font_face_t* {
    reference: extern(cairo_font_face_reference) func -> CairoFontFace
    destroy: extern(cairo_font_face_destroy) func
    getReferenceCount: extern(cairo_font_face_get_reference_count) func -> UInt
    status: extern(cairo_font_face_status) func -> CairoStatus
    getType: extern(cairo_font_face_get_type) func -> CairoFontType
    getUserData: extern(cairo_font_face_get_user_data) func (key: CairoUserDataKey) -> Void*
    setUserData: extern(cairo_font_face_set_user_data) func (key: CairoUserDataKey, userData: Void*, destroy: Func) -> CairoStatus
}

CairoScaledFont: cover from cairo_scaled_font_t* {
    new: extern(cairo_scaled_font_create) static func (fontFace: CairoFontFace, fontMatrix: CairoMatrix, ctm: CairoMatrix, options: CairoFontOptions) -> CairoScaledFont
    reference: extern(cairo_scaled_font_reference) func -> CairoScaledFont
    destroy: extern(cairo_scaled_font_destroy) func
    getReferenceCount: extern(cairo_scaled_font_get_reference_count) func -> UInt
    status: extern(cairo_scaled_font_status) func -> CairoStatus
    getType: extern(cairo_scaled_font_get_type) func -> CairoFontType
    getUserData: extern(cairo_scaled_font_get_user_data) func (key: CairoUserDataKey) -> Void*
    setUserData: extern(cairo_scaled_font_set_user_data) func (key: CairoUserDataKey, userData: Void*, destroy: Func) -> CairoStatus
    extents: extern(cairo_scaled_font_extents) func (extents: CairoFontExtents)
    textExtents: extern(cairo_scaled_font_text_extents) func (utf8: Char*, extents: CairoTextExtents*)
    glyphExtents: extern(cairo_scaled_font_glyph_extents) func (glyphs: CairoGlyph, numGlyphs: Int, extents: CairoTextExtents*)
    textToGlyphs: extern(cairo_scaled_font_text_to_glyphs) func (x: Double, y: Double, utf8: Char*, utf8Len: Int, glyphs: CairoGlyph*, numGlyphs: Int*, clusters: CairoTextCluster*, numClusters: Int*, clusterFlags: CairoTextClusterFlags*) -> CairoStatus
    getFontFace: extern(cairo_scaled_font_get_font_face) func -> CairoFontFace
    getFontMatrix: extern(cairo_scaled_font_get_font_matrix) func (fontMatrix: CairoMatrix)
    getCtm: extern(cairo_scaled_font_get_ctm) func (ctm: CairoMatrix)
    getScaleMatrix: extern(cairo_scaled_font_get_scale_matrix) func (scaleMatrix: CairoMatrix)
    getFontOptions: extern(cairo_scaled_font_get_font_options) func (options: CairoFontOptions)
}

CairoFontOptions: cover from cairo_font_options_t* {
    new: extern(cairo_font_options_create) static func -> CairoFontOptions
    copy: extern(cairo_font_options_copy) func -> CairoFontOptions
    destroy: extern(cairo_font_options_destroy) func
    status: extern(cairo_font_options_status) func -> CairoStatus
    merge: extern(cairo_font_options_merge) func (other: CairoFontOptions)
    equal: extern(cairo_font_options_equal) func (other: CairoFontOptions) -> Bool
    hash: extern(cairo_font_options_hash) func -> ULong
    setAntialias: extern(cairo_font_options_set_antialias) func (antialias: CairoAntialias)
    getAntialias: extern(cairo_font_options_get_antialias) func -> CairoAntialias
    setSubpixelOrder: extern(cairo_font_options_set_subpixel_order) func (subpixelOrder: CairoSubPixelOrder)
    getSubpixelOrder: extern(cairo_font_options_get_subpixel_order) func -> CairoSubPixelOrder
    setHintStyle: extern(cairo_font_options_set_hint_style) func (hintStyle: CairoHintStyle)
    getHintStyle: extern(cairo_font_options_get_hint_style) func -> CairoHintStyle
    setHintMetrics: extern(cairo_font_options_set_hint_metrics) func (hintMetrics: CairoHintMetrics)
    getHintMetrics: extern(cairo_font_options_get_hint_metrics) func -> CairoHintMetrics
}

CairoMatrixStruct: cover from cairo_matrix_t {}

CairoMatrix: cover from cairo_matrix_t* {
    new: static func ~identity -> This {
        m := gc_malloc(CairoMatrixStruct size) as CairoMatrix
        m initIdentity()
        m
    }
    init: extern(cairo_matrix_init) func (xx: Double, yx: Double, xy: Double, yy: Double, x0: Double, y0: Double)
    initIdentity: extern(cairo_matrix_init_identity) func
    initTranslate: extern(cairo_matrix_init_translate) func (tx: Double, ty: Double)
    initScale: extern(cairo_matrix_init_scale) func (sx: Double, sy: Double)
    initRotate: extern(cairo_matrix_init_rotate) func (radians: Double)
    translate: extern(cairo_matrix_translate) func (tx: Double, ty: Double)
    scale: extern(cairo_matrix_scale) func (sx: Double, sy: Double)
    rotate: extern(cairo_matrix_rotate) func (radians: Double)
    invert: extern(cairo_matrix_invert) func -> CairoStatus
    multiply: extern(cairo_matrix_multiply) func (a: CairoMatrix, b: CairoMatrix)
    transformDistance: extern(cairo_matrix_transform_distance) func (dx: Double*, dy: Double*)
    transformPoint: extern(cairo_matrix_transform_point) func (x: Double*, y: Double*)
}

CairoToyFontFace: cover from cairo_font_face_t* extends CairoFontFace {
    new: extern(cairo_toy_font_face_create) static func (family: Char*, slant: CairoFontSlant, weight: CairoFontWeight) -> CairoFontFace
    getFamily: extern(cairo_toy_font_face_get_family) func -> Char*
    getSlant: extern(cairo_toy_font_face_get_slant) func -> CairoFontSlant
    getWeight: extern(cairo_toy_font_face_get_weight) func -> CairoFontWeight
}

CairoUserFontFace: cover from cairo_font_face_t* extends CairoFontFace {
    new: extern(cairo_user_font_face_create) static func -> CairoFontFace
    setInitFunc: extern(cairo_user_font_face_set_init_func) func (initFunc: Func)
    setRenderGlyphFunc: extern(cairo_user_font_face_set_render_glyph_func) func (renderGlyphFunc: Func)
    setTextToGlyphsFunc: extern(cairo_user_font_face_set_text_to_glyphs_func) func (textToGlyphsFunc: Func)
    setUnicodeToGlyphFunc: extern(cairo_user_font_face_set_unicode_to_glyph_func) func (unicodeToGlyphFunc: Func)
    getInitFunc: extern(cairo_user_font_face_get_init_func) func -> Func
    getRenderGlyphFunc: extern(cairo_user_font_face_get_render_glyph_func) func -> Func
    getTextToGlyphsFunc: extern(cairo_user_font_face_get_text_to_glyphs_func) func -> Func
    getUnicodeToGlyphFunc: extern(cairo_user_font_face_get_unicode_to_glyph_func) func -> Func
}

CairoSurface: cover from cairo_surface_t* {
    createSimilar: extern(cairo_surface_create_similar) func (content: CairoContent, width: Int, height: Int) -> CairoSurface
    reference: extern(cairo_surface_reference) func -> CairoSurface
    finish: extern(cairo_surface_finish) func
    destroy: extern(cairo_surface_destroy) func
    getReferenceCount: extern(cairo_surface_get_reference_count) func -> UInt
    status: extern(cairo_surface_status) func -> CairoStatus
    getType: extern(cairo_surface_get_type) func -> CairoSurfaceType
    getContent: extern(cairo_surface_get_content) func -> CairoContent
    writeToPng: extern(cairo_surface_write_to_png) func (filename: Char*) -> CairoStatus
    writeToPngStream: extern(cairo_surface_write_to_png_stream) func (writeFunc: Func, closure: Void*) -> CairoStatus
    getUserData: extern(cairo_surface_get_user_data) func (key: CairoUserDataKey) -> Void*
    setUserData: extern(cairo_surface_set_user_data) func (key: CairoUserDataKey, userData: Void*, destroy: Func) -> CairoStatus
    getFontOptions: extern(cairo_surface_get_font_options) func (options: CairoFontOptions)
    flush: extern(cairo_surface_flush) func
    markDirty: extern(cairo_surface_mark_dirty) func
    markDirtyRectangle: extern(cairo_surface_mark_dirty_rectangle) func (x: Int, y: Int, width: Int, height: Int)
    setDeviceOffset: extern(cairo_surface_set_device_offset) func (xOffset: Double, yOffset: Double)
    getDeviceOffset: extern(cairo_surface_get_device_offset) func (xOffset: Double*, yOffset: Double*)
    setFallbackResolution: extern(cairo_surface_set_fallback_resolution) func (xPixelsPerInch: Double, yPixelsPerInch: Double)
    getFallbackResolution: extern(cairo_surface_get_fallback_resolution) func (xPixelsPerInch: Double*, yPixelsPerInch: Double*)
    copyPage: extern(cairo_surface_copy_page) func
    showPage: extern(cairo_surface_show_page) func
    hasShowTextGlyphs: extern(cairo_surface_has_show_text_glyphs) func -> Bool
}

CairoImageSurface: cover from cairo_surface_t* extends CairoSurface {
    new: extern(cairo_image_surface_create) static func (format: CairoFormat, width: Int, height: Int) -> CairoSurface
    new: extern(cairo_image_surface_create_for_data) static func ~forData (data: UChar*, format: CairoFormat, width: Int, height: Int, stride: Int) -> CairoSurface
    getData: extern(cairo_image_surface_get_data) func -> UChar*
    getFormat: extern(cairo_image_surface_get_format) func -> CairoFormat
    getWidth: extern(cairo_image_surface_get_width) func -> Int
    getHeight: extern(cairo_image_surface_get_height) func -> Int
    getStride: extern(cairo_image_surface_get_stride) func -> Int
    new: extern(cairo_image_surface_create_from_png) static func ~fromPng (filename: Char*) -> CairoSurface
    new: extern(cairo_image_surface_create_from_png_stream) static func ~fromPngStream (readFunc: Func, closure: Void*) -> CairoSurface
}

CairoGlyph: cover from cairo_glyph_t*


