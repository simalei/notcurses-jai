//
// This file was auto-generated using the following command:
//
// jai generate.jai
//



PRETERUNICODEBASE :: 1115000;

NCKEY_TAB :: 0x09;
NCKEY_ESC :: 0x1b;
NCKEY_SPACE :: 0x20;

NCKEY_MOD_SHIFT :: 1;
NCKEY_MOD_ALT :: 2;
NCKEY_MOD_CTRL :: 4;
NCKEY_MOD_SUPER :: 8;
NCKEY_MOD_HYPER :: 16;
NCKEY_MOD_META :: 32;
NCKEY_MOD_CAPSLOCK :: 64;
NCKEY_MOD_NUMLOCK :: 128;

NCBOXLIGHT :: "┌┐└┘─│";
NCBOXHEAVY :: "┏┓┗┛━┃";
NCBOXROUND :: "╭╮╰╯─│";
NCBOXDOUBLE :: "╔╗╚╝═║";
NCBOXASCII :: "/\\\\/-|";
NCBOXOUTER :: "🭽🭾🭼🭿▁🭵🭶🭰";

NCALPHA_HIGHCONTRAST :: 0x30000000;
NCALPHA_TRANSPARENT :: 0x20000000;
NCALPHA_BLEND :: 0x10000000;
NCALPHA_OPAQUE :: 0x00000000;

NCPALETTESIZE :: 256;

NC_NOBACKGROUND_MASK :: 0x8700000000000000;

NC_BGDEFAULT_MASK :: 0x0000000040000000;

NC_BG_RGB_MASK :: 0x0000000000ffffff;

NC_BG_PALETTE :: 0x0000000008000000;

NC_BG_ALPHA_MASK :: 0x30000000;

WCHAR_MAX_UTF8BYTES :: 4;

NCSTYLE_MASK :: 0xffff;
NCSTYLE_ITALIC :: 0x0010;
NCSTYLE_UNDERLINE :: 0x0008;
NCSTYLE_UNDERCURL :: 0x0004;
NCSTYLE_BOLD :: 0x0002;
NCSTYLE_STRUCK :: 0x0001;
NCSTYLE_NONE :: 0;

NCOPTION_INHIBIT_SETLOCALE :: 0x0001;

NCOPTION_NO_CLEAR_BITMAPS :: 0x0002;

NCOPTION_NO_WINCH_SIGHANDLER :: 0x0004;

NCOPTION_NO_QUIT_SIGHANDLERS :: 0x0008;

NCOPTION_PRESERVE_CURSOR :: 0x0010;

NCOPTION_SUPPRESS_BANNERS :: 0x0020;

NCOPTION_NO_ALTERNATE_SCREEN :: 0x0040;

NCOPTION_NO_FONT_CHANGES :: 0x0080;

NCOPTION_DRAIN_INPUT :: 0x0100;

NCOPTION_SCROLLING :: 0x0200;

NCOPTION_CLI_MODE :: NCOPTION_NO_ALTERNATE_SCREEN |NCOPTION_NO_CLEAR_BITMAPS |NCOPTION_PRESERVE_CURSOR |NCOPTION_SCROLLING;

NCINPUT_MAX_EFF_TEXT_CODEPOINTS :: 4;

NCMICE_NO_EVENTS :: 0;
NCMICE_MOVE_EVENT :: 0x1;
NCMICE_BUTTON_EVENT :: 0x2;
NCMICE_DRAG_EVENT :: 0x4;
NCMICE_ALL_EVENTS :: 0x7;

NCPLANE_OPTION_HORALIGNED :: 0x0001;

NCPLANE_OPTION_VERALIGNED :: 0x0002;

NCPLANE_OPTION_MARGINALIZED :: 0x0004;

NCPLANE_OPTION_FIXED :: 0x0008;

NCPLANE_OPTION_AUTOGROW :: 0x0010;

NCPLANE_OPTION_VSCROLL :: 0x0020;

NCBOXMASK_TOP :: 0x0001;
NCBOXMASK_RIGHT :: 0x0002;
NCBOXMASK_BOTTOM :: 0x0004;
NCBOXMASK_LEFT :: 0x0008;
NCBOXGRAD_TOP :: 0x0010;
NCBOXGRAD_RIGHT :: 0x0020;
NCBOXGRAD_BOTTOM :: 0x0040;
NCBOXGRAD_LEFT :: 0x0080;
NCBOXCORNER_MASK :: 0x0300;
NCBOXCORNER_SHIFT :: 8;

NCVISUAL_OPTION_NODEGRADE :: 0x0001;
NCVISUAL_OPTION_BLEND :: 0x0002;
NCVISUAL_OPTION_HORALIGNED :: 0x0004;
NCVISUAL_OPTION_VERALIGNED :: 0x0008;
NCVISUAL_OPTION_ADDALPHA :: 0x0010;
NCVISUAL_OPTION_CHILDPLANE :: 0x0020;
NCVISUAL_OPTION_NOINTERPOLATE :: 0x0040;

NCREEL_OPTION_INFINITESCROLL :: 0x0001;

NCREEL_OPTION_CIRCULAR :: 0x0002;

NCPREFIXCOLUMNS :: 7;
NCIPREFIXCOLUMNS :: 8;
NCBPREFIXCOLUMNS :: 9;
NCPREFIXSTRLEN :: NCPREFIXCOLUMNS + 1;
NCIPREFIXSTRLEN :: NCIPREFIXCOLUMNS + 1;
NCBPREFIXSTRLEN :: NCBPREFIXCOLUMNS + 1;

NCMENU_OPTION_BOTTOM :: 0x0001;
NCMENU_OPTION_HIDING :: 0x0002;

NCPROGBAR_OPTION_RETROGRADE :: 0x0001;

NCTABBED_OPTION_BOTTOM :: 0x0001;

NCPLOT_OPTION_LABELTICKSD :: 0x0001;
NCPLOT_OPTION_EXPONENTIALD :: 0x0002;
NCPLOT_OPTION_VERTICALI :: 0x0004;
NCPLOT_OPTION_NODEGRADE :: 0x0008;
NCPLOT_OPTION_DETECTMAXONLY :: 0x0010;
NCPLOT_OPTION_PRINTSAMPLE :: 0x0020;

NCREADER_OPTION_HORSCROLL :: 0x0001;

NCREADER_OPTION_VERSCROLL :: 0x0002;

NCREADER_OPTION_NOCMDKEYS :: 0x0004;

NCREADER_OPTION_CURSOR :: 0x0008;

NCDIRECT_OPTION_INHIBIT_SETLOCALE :: 0x0001;

NCDIRECT_OPTION_INHIBIT_CBREAK :: 0x0002;

NCDIRECT_OPTION_DRAIN_INPUT :: 0x0004;

NCDIRECT_OPTION_NO_QUIT_SIGHANDLERS :: 0x0008;

NCDIRECT_OPTION_VERBOSE :: 0x0010;

NCDIRECT_OPTION_VERY_VERBOSE :: 0x0020;

timespec :: struct {
    tv_sec:  s64;
    tv_nsec: s64;
}

uintmax_t :: u64;

// Is this uint32_t a synthesized event?
nckey_synthesized_p :: (w: u32) -> bool #foreign libnotcurses_ffi;

// Is this uint32_t from the Private Use Area in the BMP (Plane 0)?
nckey_pua_p :: (w: u32) -> bool #foreign libnotcurses_ffi;

// Is this uint32_t a Supplementary Private Use Area-A codepoint?
nckey_supppuaa_p :: (w: u32) -> bool #foreign libnotcurses_ffi;

// Is this uint32_t a Supplementary Private Use Area-B codepoint?
nckey_supppuab_p :: (w: u32) -> bool #foreign libnotcurses_ffi;

// Get a human-readable string describing the running Notcurses version.
notcurses_version :: () -> *u8 #foreign libnotcurses;

// Cannot be inline, as we want to get the versions of the actual Notcurses
// library we loaded, not what we compile against.
notcurses_version_components :: (major: *s32, minor: *s32, patch: *s32, tweak: *s32) -> void #foreign libnotcurses;

notcurses :: struct {}
ncplane :: struct {}
ncvisual :: struct {}
ncuplot :: struct {}
ncdplot :: struct {}
ncprogbar :: struct {}
ncfdplane :: struct {}
ncsubproc :: struct {}
ncselector :: struct {}
ncmultiselector :: struct {}
ncreader :: struct {}
ncfadectx :: struct {}
nctablet :: struct {}
ncreel :: struct {}
nctab :: struct {}
nctabbed :: struct {}
ncdirect :: struct {}

// we never blit full blocks, but instead spaces (more efficient) with the
// background set to the desired foreground. these need be kept in the same
// order as the blitters[] definition in lib/blit.c.
ncblitter_e :: enum u32 {
    DEFAULT :: 0;
    _1x1    :: 1;
    _2x1    :: 2;
    _2x2    :: 3;
    _3x2    :: 4;
    _4x2    :: 5;
    BRAILLE :: 6;
    PIXEL   :: 7;

    _4x1    :: 8;
    _8x1    :: 9;

    NCBLIT_DEFAULT :: DEFAULT;
    NCBLIT_1x1     :: _1x1;
    NCBLIT_2x1     :: _2x1;
    NCBLIT_2x2     :: _2x2;
    NCBLIT_3x2     :: _3x2;
    NCBLIT_4x2     :: _4x2;
    NCBLIT_BRAILLE :: BRAILLE;
    NCBLIT_PIXEL   :: PIXEL;

    NCBLIT_4x1     :: _4x1;
    NCBLIT_8x1     :: _8x1;
}

// Alignment within a plane or terminal. Left/right-justified, or centered.
ncalign_e :: enum u32 {
    UNALIGNED :: 0;
    LEFT      :: 1;
    CENTER    :: 2;
    RIGHT     :: 3;

    NCALIGN_UNALIGNED :: UNALIGNED;
    NCALIGN_LEFT      :: LEFT;
    NCALIGN_CENTER    :: CENTER;
    NCALIGN_RIGHT     :: RIGHT;
}

// How to scale an ncvisual during rendering. NCSCALE_NONE will apply no
// scaling. NCSCALE_SCALE scales a visual to the plane's size, maintaining
// aspect ratio. NCSCALE_STRETCH stretches and scales the image in an attempt
// to fill the entirety of the plane. NCSCALE_NONE_HIRES and
// NCSCALE_SCALE_HIRES behave like their counterparts, but admit blitters
// which don't preserve aspect ratio.
ncscale_e :: enum u32 {
    NONE        :: 0;
    SCALE       :: 1;
    STRETCH     :: 2;
    NONE_HIRES  :: 3;
    SCALE_HIRES :: 4;

    NCSCALE_NONE        :: NONE;
    NCSCALE_SCALE       :: SCALE;
    NCSCALE_STRETCH     :: STRETCH;
    NCSCALE_NONE_HIRES  :: NONE_HIRES;
    NCSCALE_SCALE_HIRES :: SCALE_HIRES;
}

// Extract the 2-bit alpha component from a 32-bit channel. It is not
// shifted down, and can be directly compared to NCALPHA_* values.
ncchannel_alpha :: (channel: u32) -> u32 #foreign libnotcurses_ffi;

// Set the 2-bit alpha component of the 32-bit channel. Background channels
// must not be set to NCALPHA_HIGHCONTRAST. It is an error if alpha contains
// any bits other than NCALPHA_*.
ncchannel_set_alpha :: (channel: *u32, alpha: u32) -> s32 #foreign libnotcurses_ffi;

// Is this channel using the "default color" rather than RGB/palette-indexed?
ncchannel_default_p :: (channel: u32) -> bool #foreign libnotcurses_ffi;

// Mark the channel as using its default color. Alpha is set opaque.
ncchannel_set_default :: (channel: *u32) -> u32 #foreign libnotcurses_ffi;

// Is this channel using palette-indexed color?
ncchannel_palindex_p :: (channel: u32) -> bool #foreign libnotcurses_ffi;

// Extract the palette index from a channel. Only valid if
// ncchannel_palindex_p() would return true for the channel.
ncchannel_palindex :: (channel: u32) -> u32 #foreign libnotcurses_ffi;

// Mark the channel as using the specified palette color. It is an error if
// the index is greater than NCPALETTESIZE. Alpha is set opaque.
ncchannel_set_palindex :: (channel: *u32, idx: u32) -> s32 #foreign libnotcurses_ffi;

// Is this channel using RGB color?
ncchannel_rgb_p :: (channel: u32) -> bool #foreign libnotcurses_ffi;

// Extract the 8-bit red component from a 32-bit channel. Only valid if
// ncchannel_rgb_p() would return true for the channel.
ncchannel_r :: (channel: u32) -> u32 #foreign libnotcurses_ffi;

// Extract the 8-bit green component from a 32-bit channel. Only valid if
// ncchannel_rgb_p() would return true for the channel.
ncchannel_g :: (channel: u32) -> u32 #foreign libnotcurses_ffi;

// Extract the 8-bit blue component from a 32-bit channel. Only valid if
// ncchannel_rgb_p() would return true for the channel.
ncchannel_b :: (channel: u32) -> u32 #foreign libnotcurses_ffi;

// Extract the 24-bit RGB value from a 32-bit channel.
// Only valid if ncchannel_rgb_p() would return true for the channel.
ncchannel_rgb :: (channel: u32) -> u32 #foreign libnotcurses_ffi;

// Extract the three 8-bit R/G/B components from a 32-bit channel.
// Only valid if ncchannel_rgb_p() would return true for the channel.
ncchannel_rgb8 :: (channel: u32, r: *u32, g: *u32, b: *u32) -> u32 #foreign libnotcurses_ffi;

// Set the three 8-bit components of a 32-bit channel, and mark it as not using
// the default color. Retain the other bits unchanged. Any value greater than
// 255 will result in a return of -1 and no change to the channel.
ncchannel_set_rgb8 :: (channel: *u32, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

// Same, but provide an assembled, packed 24 bits of rgb.
ncchannel_set :: (channel: *u32, rgb: u32) -> s32 #foreign libnotcurses_ffi;

// Set the three 8-bit components of a 32-bit channel, and mark it as not using
// the default color. Retain the other bits unchanged. r, g, and b will be
// clipped to the range [0..255].
ncchannel_set_rgb8_clipped :: (channel: *u32, r: s32, g: s32, b: s32) -> void #foreign libnotcurses_ffi;

// Extract the background alpha and coloring bits from a 64-bit channel
// pair as a single 32-bit value.
ncchannels_bchannel :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

// Extract the foreground alpha and coloring bits from a 64-bit channel
// pair as a single 32-bit value.
ncchannels_fchannel :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

// Extract the background alpha and coloring bits from a 64-bit channel pair.
ncchannels_channels :: (channels: u64) -> u64 #foreign libnotcurses_ffi;

ncchannels_bg_rgb_p :: (channels: u64) -> bool #foreign libnotcurses_ffi;

ncchannels_fg_rgb_p :: (channels: u64) -> bool #foreign libnotcurses_ffi;

// Extract 2 bits of background alpha from 'channels', shifted to LSBs.
ncchannels_bg_alpha :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

// Set the background alpha and coloring bits of the 64-bit channel pair
// from a single 32-bit value.
ncchannels_set_bchannel :: (channels: *u64, channel: u32) -> u64 #foreign libnotcurses_ffi;

// Set the foreground alpha and coloring bits of the 64-bit channel pair
// from a single 32-bit value.
ncchannels_set_fchannel :: (channels: *u64, channel: u32) -> u64 #foreign libnotcurses_ffi;

// Set the alpha and coloring bits of a channel pair from another channel pair.
ncchannels_set_channels :: (dst: *u64, channels: u64) -> u64 #foreign libnotcurses_ffi;

// Set the 2-bit alpha component of the background channel.
ncchannels_set_bg_alpha :: (channels: *u64, alpha: u32) -> s32 #foreign libnotcurses_ffi;

// Extract 2 bits of foreground alpha from 'channels', shifted to LSBs.
ncchannels_fg_alpha :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

// Set the 2-bit alpha component of the foreground channel.
ncchannels_set_fg_alpha :: (channels: *u64, alpha: u32) -> s32 #foreign libnotcurses_ffi;

// Returns the channels with the fore- and background's color information
// swapped, but without touching housekeeping bits. Alpha is retained unless
// it would lead to an illegal state: HIGHCONTRAST, TRANSPARENT, and BLEND
// are taken to OPAQUE unless the new value is RGB.
ncchannels_reverse :: (channels: u64) -> u64 #foreign libnotcurses_ffi;

// Creates a new channel pair using 'fchan' as the foreground channel
// and 'bchan' as the background channel.
ncchannels_combine :: (fchan: u32, bchan: u32) -> u64 #foreign libnotcurses_ffi;

ncchannels_fg_palindex :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

ncchannels_bg_palindex :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of foreground RGB from 'channels', shifted to LSBs.
ncchannels_fg_rgb :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of background RGB from 'channels', shifted to LSBs.
ncchannels_bg_rgb :: (channels: u64) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of foreground RGB from 'channels', split into subchannels.
ncchannels_fg_rgb8 :: (channels: u64, r: *u32, g: *u32, b: *u32) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of background RGB from 'channels', split into subchannels.
ncchannels_bg_rgb8 :: (channels: u64, r: *u32, g: *u32, b: *u32) -> u32 #foreign libnotcurses_ffi;

// Set the r, g, and b channels for the foreground component of this 64-bit
// 'channels' variable, and mark it as not using the default color.
ncchannels_set_fg_rgb8 :: (channels: *u64, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

// Same, but clips to [0..255].
ncchannels_set_fg_rgb8_clipped :: (channels: *u64, r: s32, g: s32, b: s32) -> void #foreign libnotcurses_ffi;

ncchannels_set_fg_palindex :: (channels: *u64, idx: u32) -> s32 #foreign libnotcurses_ffi;

// Same, but set an assembled 24 bit channel at once.
ncchannels_set_fg_rgb :: (channels: *u64, rgb: u32) -> s32 #foreign libnotcurses_ffi;

// Set the r, g, and b channels for the background component of this 64-bit
// 'channels' variable, and mark it as not using the default color.
ncchannels_set_bg_rgb8 :: (channels: *u64, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

// Same, but clips to [0..255].
ncchannels_set_bg_rgb8_clipped :: (channels: *u64, r: s32, g: s32, b: s32) -> void #foreign libnotcurses_ffi;

// Set the cell's background palette index, set the background palette index
// bit, set it background-opaque, and clear the background default color bit.
ncchannels_set_bg_palindex :: (channels: *u64, idx: u32) -> s32 #foreign libnotcurses_ffi;

// Same, but set an assembled 24 bit channel at once.
ncchannels_set_bg_rgb :: (channels: *u64, rgb: u32) -> s32 #foreign libnotcurses_ffi;

// Is the foreground using the "default foreground color"?
ncchannels_fg_default_p :: (channels: u64) -> bool #foreign libnotcurses_ffi;

// Is the foreground using indexed palette color?
ncchannels_fg_palindex_p :: (channels: u64) -> bool #foreign libnotcurses_ffi;

// Is the background using the "default background color"? The "default
// background color" must generally be used to take advantage of
// terminal-effected transparency.
ncchannels_bg_default_p :: (channels: u64) -> bool #foreign libnotcurses_ffi;

// Is the background using indexed palette color?
ncchannels_bg_palindex_p :: (channels: u64) -> bool #foreign libnotcurses_ffi;

// Mark the foreground channel as using its default color.
ncchannels_set_fg_default :: (channels: *u64) -> u64 #foreign libnotcurses_ffi;

// Mark the background channel as using its default color.
ncchannels_set_bg_default :: (channels: *u64) -> u64 #foreign libnotcurses_ffi;

// Returns the number of columns occupied by the longest valid prefix of a
// multibyte (UTF-8) string. If an invalid character is encountered, -1 will be
// returned, and the number of valid bytes and columns will be written into
// *|validbytes| and *|validwidth| (assuming them non-NULL). If the entire
// string is valid, *|validbytes| and *|validwidth| reflect the entire string.
ncstrwidth :: (egcs: *u8, validbytes: *s32, validwidth: *s32) -> s32 #foreign libnotcurses;

// input functions like notcurses_get() return ucs32-encoded uint32_t. convert
// a series of uint32_t to utf8. result must be at least 4 bytes per input
// uint32_t (6 bytes per uint32_t will future-proof against Unicode expansion).
// the number of bytes used is returned, or -1 if passed illegal ucs32, or too
// small of a buffer.
notcurses_ucs32_to_utf8 :: (ucs32: *u32, ucs32count: u32, resultbuf: *u8, buflen: u64) -> s32 #foreign libnotcurses;

// An nccell corresponds to a single character cell on some plane, which can be
// occupied by a single grapheme cluster (some root spacing glyph, along with
// possible combining characters, which might span multiple columns). At any
// cell, we can have a theoretically arbitrarily long UTF-8 EGC, a foreground
// color, a background color, and an attribute set. Valid grapheme cluster
// contents include:
//
//  * A NUL terminator,
//  * A single control character, followed by a NUL terminator,
//  * At most one spacing character, followed by zero or more nonspacing
//    characters, followed by a NUL terminator.
//
// Multi-column characters can only have a single style/color throughout.
// Existence is suffering, and thus wcwidth() is not reliable. It's just
// quoting whether or not the EGC contains a "Wide Asian" double-width
// character. This is set for some things, like most emoji, and not set for
// other things, like cuneiform. True display width is a *function of the
// font and terminal*. Among the longest Unicode codepoints is
//
//    U+FDFD ARABIC LIGATURE BISMILLAH AR-RAHMAN AR-RAHEEM ﷽
//
// wcwidth() rather optimistically claims this most exalted glyph to occupy
// a single column. BiDi text is too complicated for me to even get into here.
// Be assured there are no easy answers; ours is indeed a disturbing Universe.
//
// Each nccell occupies 16 static bytes (128 bits). The surface is thus ~1.6MB
// for a (pretty large) 500x200 terminal. At 80x43, it's less than 64KB.
// Dynamic requirements (the egcpool) can add up to 16MB to an ncplane, but
// such large pools are unlikely in common use.
//
// We implement some small alpha compositing. Foreground and background both
// have two bits of inverted alpha. The actual grapheme written to a cell is
// the topmost non-zero grapheme. If its alpha is 00, its foreground color is
// used unchanged. If its alpha is 10, its foreground color is derived entirely
// from cells underneath it. Otherwise, the result will be a composite.
// Likewise for the background. If the bottom of a coordinate's zbuffer is
// reached with a cumulative alpha of zero, the default is used. In this way,
// a terminal configured with transparent background can be supported through
// multiple occluding ncplanes. A foreground alpha of 11 requests high-contrast
// text (relative to the computed background). A background alpha of 11 is
// currently forbidden.
//
// Default color takes precedence over palette or RGB, and cannot be used with
// transparency. Indexed palette takes precedence over RGB. It cannot
// meaningfully set transparency, but it can be mixed into a cascading color.
// RGB is used if neither default terminal colors nor palette indexing are in
// play, and fully supports all transparency options.
//
// This structure is exposed only so that most functions can be inlined. Do not
// directly modify or access the fields of this structure; use the API.
nccell :: struct {
    gcluster:          u32; // 4B → 4B little endian EGC
    gcluster_backstop: u8; // 1B → 5B (8 bits of zero)

    width:             u8; // 1B → 6B (8 bits of EGC column width)
    stylemask:         u16; // 2B → 8B (16 bits of NCSTYLE_* attributes)

    channels:          u64; // + 8B == 16B
}

nccell_init :: (c: *nccell) -> void #foreign libnotcurses_ffi;

// Breaks the UTF-8 string in 'gcluster' down, setting up the nccell 'c'.
// Returns the number of bytes copied out of 'gcluster', or -1 on failure. The
// styling of the cell is left untouched, but any resources are released.
nccell_load :: (n: *ncplane, c: *nccell, gcluster: *u8) -> s32 #foreign libnotcurses;

// nccell_load(), plus blast the styling with 'attr' and 'channels'.
nccell_prime :: (n: *ncplane, c: *nccell, gcluster: *u8, stylemask: u16, channels: u64) -> s32 #foreign libnotcurses_ffi;

// Duplicate 'c' into 'targ'; both must be/will be bound to 'n'. Returns -1 on
// failure, and 0 on success.
nccell_duplicate :: (n: *ncplane, targ: *nccell, c: *nccell) -> s32 #foreign libnotcurses;

// Release resources held by the nccell 'c'.
nccell_release :: (n: *ncplane, c: *nccell) -> void #foreign libnotcurses;

// Set the specified style bits for the nccell 'c', whether they're actively
// supported or not. Only the lower 16 bits are meaningful.
nccell_set_styles :: (c: *nccell, stylebits: u32) -> void #foreign libnotcurses_ffi;

// Extract the style bits from the nccell.
nccell_styles :: (c: *nccell) -> u16 #foreign libnotcurses_ffi;

// Add the specified styles (in the LSBs) to the nccell's existing spec,
// whether they're actively supported or not.
nccell_on_styles :: (c: *nccell, stylebits: u32) -> void #foreign libnotcurses_ffi;

// Remove the specified styles (in the LSBs) from the nccell's existing spec.
nccell_off_styles :: (c: *nccell, stylebits: u32) -> void #foreign libnotcurses_ffi;

// Use the default color for the foreground.
nccell_set_fg_default :: (c: *nccell) -> void #foreign libnotcurses_ffi;

// Use the default color for the background.
nccell_set_bg_default :: (c: *nccell) -> void #foreign libnotcurses_ffi;

nccell_set_fg_alpha :: (c: *nccell, alpha: u32) -> s32 #foreign libnotcurses_ffi;

nccell_set_bg_alpha :: (c: *nccell, alpha: u32) -> s32 #foreign libnotcurses_ffi;

nccell_set_bchannel :: (c: *nccell, channel: u32) -> u64 #foreign libnotcurses_ffi;

nccell_set_fchannel :: (c: *nccell, channel: u32) -> u64 #foreign libnotcurses_ffi;

nccell_set_channels :: (c: *nccell, channels: u64) -> u64 #foreign libnotcurses_ffi;

// Is the cell part of a multicolumn element?
nccell_double_wide_p :: (c: *nccell) -> bool #foreign libnotcurses_ffi;

// Is this the right half of a wide character?
nccell_wide_right_p :: (c: *nccell) -> bool #foreign libnotcurses_ffi;

// Is this the left half of a wide character?
nccell_wide_left_p :: (c: *nccell) -> bool #foreign libnotcurses_ffi;

// return a pointer to the NUL-terminated EGC referenced by 'c'. this pointer
// can be invalidated by any further operation on the plane 'n', so...watch out!
nccell_extended_gcluster :: (n: *ncplane, c: *nccell) -> *u8 #foreign libnotcurses;

nccell_channels :: (c: *nccell) -> u64 #foreign libnotcurses_ffi;

// Extract the background alpha and coloring bits from a cell's channels
// as a single 32-bit value.
nccell_bchannel :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// Extract the foreground alpha and coloring bits from a cell's channels
// as a single 32-bit value.
nccell_fchannel :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// return the number of columns occupied by 'c'. see ncstrwidth() for an
// equivalent for multiple EGCs.
nccell_cols :: (c: *nccell) -> u32 #foreign libnotcurses_ffi;

// copy the UTF8-encoded EGC out of the nccell. the result is not tied to any
// ncplane, and persists across erases / destruction.
nccell_strdup :: (n: *ncplane, c: *nccell) -> *u8 #foreign libnotcurses_ffi;

// Extract the three elements of a nccell.
nccell_extract :: (n: *ncplane, c: *nccell, stylemask: *u16, channels: *u64) -> *u8 #foreign libnotcurses_ffi;

// Returns true if the two nccells are distinct EGCs, attributes, or channels.
// The actual egcpool index needn't be the same--indeed, the planes needn't even
// be the same. Only the expanded EGC must be equal. The EGC must be bit-equal;
// it would probably be better to test whether they're Unicode-equal FIXME.
// probably needs be fixed up for sprixels FIXME.
nccellcmp :: (n1: *ncplane, c1: *nccell, n2: *ncplane, c2: *nccell) -> bool #foreign libnotcurses_ffi;

// Load a 7-bit char 'ch' into the nccell 'c'. Returns the number of bytes
// used, or -1 on error.
nccell_load_char :: (n: *ncplane, c: *nccell, ch: u8) -> s32 #foreign libnotcurses_ffi;

// Load a UTF-8 encoded EGC of up to 4 bytes into the nccell 'c'. Returns the
// number of bytes used, or -1 on error.
nccell_load_egc32 :: (n: *ncplane, c: *nccell, egc: u32) -> s32 #foreign libnotcurses_ffi;

// Load a UCS-32 codepoint into the nccell 'c'. Returns the number of bytes
// used, or -1 on error.
nccell_load_ucs32 :: (n: *ncplane, c: *nccell, u: u32) -> s32 #foreign libnotcurses_ffi;

// These log levels consciously map cleanly to those of libav; Notcurses itself
// does not use this full granularity. The log level does not affect the opening
// and closing banners, which can be disabled via the notcurses_option struct's
// 'suppress_banner'. Note that if stderr is connected to the same terminal on
// which we're rendering, any kind of logging will disrupt the output (which is
// undesirable). The "default" zero value is NCLOGLEVEL_PANIC.
ncloglevel_e :: enum s32 {
    SILENT  :: -1;
    PANIC   :: 0;
    FATAL   :: 1;
    ERROR   :: 2;
    WARNING :: 3;
    INFO    :: 4;
    VERBOSE :: 5;
    DEBUG   :: 6;
    TRACE   :: 7;

    NCLOGLEVEL_SILENT  :: SILENT;
    NCLOGLEVEL_PANIC   :: PANIC;
    NCLOGLEVEL_FATAL   :: FATAL;
    NCLOGLEVEL_ERROR   :: ERROR;
    NCLOGLEVEL_WARNING :: WARNING;
    NCLOGLEVEL_INFO    :: INFO;
    NCLOGLEVEL_VERBOSE :: VERBOSE;
    NCLOGLEVEL_DEBUG   :: DEBUG;
    NCLOGLEVEL_TRACE   :: TRACE;
}

// Configuration for notcurses_init().
notcurses_options :: struct {
    // The name of the terminfo database entry describing this terminal. If NULL,
    // the environment variable TERM is used. Failure to open the terminal
    // definition will result in failure to initialize notcurses.
    termtype: *u8;

    // Progressively higher log levels result in more logging to stderr. By
    // default, nothing is printed to stderr once fullscreen service begins.
    loglevel: ncloglevel_e;

    // Desirable margins. If all are 0 (default), we will render to the entirety
    // of the screen. If the screen is too small, we do what we can--this is
    // strictly best-effort. Absolute coordinates are relative to the rendering
    // area ((0, 0) is always the origin of the rendering area).
    margin_t: u32;
    // Desirable margins. If all are 0 (default), we will render to the entirety
    // of the screen. If the screen is too small, we do what we can--this is
    // strictly best-effort. Absolute coordinates are relative to the rendering
    // area ((0, 0) is always the origin of the rendering area).
    margin_r: u32;
    // Desirable margins. If all are 0 (default), we will render to the entirety
    // of the screen. If the screen is too small, we do what we can--this is
    // strictly best-effort. Absolute coordinates are relative to the rendering
    // area ((0, 0) is always the origin of the rendering area).
    margin_b: u32;
    // Desirable margins. If all are 0 (default), we will render to the entirety
    // of the screen. If the screen is too small, we do what we can--this is
    // strictly best-effort. Absolute coordinates are relative to the rendering
    // area ((0, 0) is always the origin of the rendering area).
    margin_l: u32;

    // General flags; see NCOPTION_*. This is expressed as a bitfield so that
    // future options can be added without reshaping the struct. Undefined bits
    // must be set to 0.
    flags:    u64;
}

// Lex a margin argument according to the standard Notcurses definition. There
// can be either a single number, which will define all margins equally, or
// there can be four numbers separated by commas.
notcurses_lex_margins :: (op: *u8, opts: *notcurses_options) -> s32 #foreign libnotcurses;

// Lex a blitter.
notcurses_lex_blitter :: (op: *u8, blitter: *ncblitter_e) -> s32 #foreign libnotcurses;

// Get the name of a blitter.
notcurses_str_blitter :: (blitter: ncblitter_e) -> *u8 #foreign libnotcurses;

// Lex a scaling mode (one of "none", "stretch", "scale", "hires",
// "scalehi", or "inflate").
notcurses_lex_scalemode :: (op: *u8, scalemode: *ncscale_e) -> s32 #foreign libnotcurses;

// Get the name of a scaling mode.
notcurses_str_scalemode :: (scalemode: ncscale_e) -> *u8 #foreign libnotcurses;

// The same as notcurses_init(), but without any multimedia functionality,
// allowing for a svelter binary. Link with notcurses-core if this is used.
notcurses_core_init :: (opts: *notcurses_options, fp: *FILE) -> *notcurses #foreign libnotcurses;

// Destroy a Notcurses context. A NULL 'nc' is a no-op.
notcurses_stop :: (nc: *notcurses) -> s32 #foreign libnotcurses;

// Shift to the alternate screen, if available. If already using the alternate
// screen, this returns 0 immediately. If the alternate screen is not
// available, this returns -1 immediately. Entering the alternate screen turns
// off scrolling for the standard plane.
notcurses_enter_alternate_screen :: (nc: *notcurses) -> s32 #foreign libnotcurses;

// Exit the alternate screen. Immediately returns 0 if not currently using the
// alternate screen.
notcurses_leave_alternate_screen :: (nc: *notcurses) -> s32 #foreign libnotcurses;

// Get a reference to the standard plane (one matching our current idea of the
// terminal size) for this terminal. The standard plane always exists, and its
// origin is always at the uppermost, leftmost cell of the terminal.
notcurses_stdplane :: (nc: *notcurses) -> *ncplane #foreign libnotcurses;

notcurses_stdplane_const :: (nc: *notcurses) -> *ncplane #foreign libnotcurses;

// Return the topmost plane of the pile containing 'n'.
ncpile_top :: (n: *ncplane) -> *ncplane #foreign libnotcurses;

// Return the bottommost plane of the pile containing 'n'.
ncpile_bottom :: (n: *ncplane) -> *ncplane #foreign libnotcurses;

// Return the topmost plane of the standard pile.
notcurses_top :: (n: *notcurses) -> *ncplane #foreign libnotcurses_ffi;

// Return the bottommost plane of the standard pile.
notcurses_bottom :: (n: *notcurses) -> *ncplane #foreign libnotcurses_ffi;

// Renders the pile of which 'n' is a part. Rendering this pile again will blow
// away the render. To actually write out the render, call ncpile_rasterize().
ncpile_render :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Make the physical screen match the last rendered frame from the pile of
// which 'n' is a part. This is a blocking call. Don't call this before the
// pile has been rendered (doing so will likely result in a blank screen).
ncpile_rasterize :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Renders and rasterizes the standard pile in one shot. Blocking call.
notcurses_render :: (nc: *notcurses) -> s32 #foreign libnotcurses_ffi;

// Perform the rendering and rasterization portion of ncpile_render() and
// ncpile_rasterize(), but do not write the resulting buffer out to the
// terminal. Using this function, the user can control the writeout process.
// The returned buffer must be freed by the caller.
ncpile_render_to_buffer :: (p: *ncplane, buf: **u8, buflen: *u64) -> s32 #foreign libnotcurses;

// Write the last rendered frame, in its entirety, to 'fp'. If a frame has
// not yet been rendered, nothing will be written.
ncpile_render_to_file :: (p: *ncplane, fp: *FILE) -> s32 #foreign libnotcurses;

// Destroy all ncplanes other than the stdplane.
notcurses_drop_planes :: (nc: *notcurses) -> void #foreign libnotcurses;

// Is the event a synthesized mouse event?
nckey_mouse_p :: (r: u32) -> bool #foreign libnotcurses_ffi;

ncintype_e :: enum u32 {
    UNKNOWN :: 0;
    PRESS   :: 1;
    REPEAT  :: 2;
    RELEASE :: 3;

    NCTYPE_UNKNOWN :: UNKNOWN;
    NCTYPE_PRESS   :: PRESS;
    NCTYPE_REPEAT  :: REPEAT;
    NCTYPE_RELEASE :: RELEASE;
}

// An input event. Cell coordinates are currently defined only for mouse
// events. It is not guaranteed that we can set the modifiers for a given
// ncinput. We encompass single Unicode codepoints, not complete EGCs.
// FIXME for abi4, combine the bools into |modifiers|
ncinput :: struct {
    id:        u32; // Unicode codepoint or synthesized NCKEY event
    y:         s32; // y/x cell coordinate of event, -1 for undefined
    x:         s32; // y/x cell coordinate of event, -1 for undefined
    utf8:      [5] u8; // utf8 representation, if one exists

    alt:       bool; // was alt held?
    shift:     bool; // was shift held?
    ctrl:      bool; // was ctrl held?

    // END DEPRECATION
    evtype:    ncintype_e;
    modifiers: u32; // bitmask over NCKEY_MOD_*
    ypx:       s32; // pixel offsets within cell, -1 for undefined
    xpx:       s32; // pixel offsets within cell, -1 for undefined
    eff_text:  [4] u32; // Effective 
}

ncinput_shift_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

ncinput_ctrl_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

ncinput_alt_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

ncinput_meta_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

ncinput_super_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

ncinput_hyper_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

ncinput_capslock_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

ncinput_numlock_p :: (n: *ncinput) -> bool #foreign libnotcurses_ffi;

// compare two ncinput structs for data equality. NCTYPE_PRESS and
// NCTYPE_UNKNOWN are considered to be equivalent. NCKEY_MOD_CAPSLOCK
// and NCKEY_MOD_NUMLOCK are not considered relevant.
ncinput_equal_p :: (n1: *ncinput, n2: *ncinput) -> bool #foreign libnotcurses_ffi;

// Read a UTF-32-encoded Unicode codepoint from input. This might only be part
// of a larger EGC. Provide a NULL 'ts' to block at length, and otherwise a
// timespec specifying an absolute deadline calculated using CLOCK_MONOTONIC.
// Returns a single Unicode code point, or a synthesized special key constant,
// or (uint32_t)-1 on error. Returns 0 on a timeout. If an event is processed,
// the return value is the 'id' field from that event. 'ni' may be NULL.
notcurses_get :: (n: *notcurses, ts: *timespec, ni: *ncinput) -> u32 #foreign libnotcurses;

// Acquire up to 'vcount' ncinputs at the vector 'ni'. The number read will be
// returned, or -1 on error without any reads, 0 on timeout.
notcurses_getvec :: (n: *notcurses, ts: *timespec, ni: *ncinput, vcount: s32) -> s32 #foreign libnotcurses;

// Get a file descriptor suitable for input event poll()ing. When this
// descriptor becomes available, you can call notcurses_get_nblock(),
// and input ought be ready. This file descriptor is *not* necessarily
// the file descriptor associated with stdin (but it might be!).
notcurses_inputready_fd :: (n: *notcurses) -> s32 #foreign libnotcurses;

// 'ni' may be NULL if the caller is uninterested in event details. If no event
// is immediately ready, returns 0.
notcurses_get_nblock :: (n: *notcurses, ni: *ncinput) -> u32 #foreign libnotcurses_ffi;

// 'ni' may be NULL if the caller is uninterested in event details. Blocks
// until an event is processed or a signal is received (including resize events).
notcurses_get_blocking :: (n: *notcurses, ni: *ncinput) -> u32 #foreign libnotcurses_ffi;

// Was 'ni' free of modifiers?
ncinput_nomod_p :: (ni: *ncinput) -> bool #foreign libnotcurses_ffi;

// Enable mice events according to 'eventmask'; an eventmask of 0 will disable
// all mice tracking. On failure, -1 is returned. On success, 0 is returned, and
// mouse events will be published to notcurses_get().
notcurses_mice_enable :: (n: *notcurses, eventmask: u32) -> s32 #foreign libnotcurses;

// Disable mouse events. Any events in the input queue can still be delivered.
notcurses_mice_disable :: (n: *notcurses) -> s32 #foreign libnotcurses_ffi;

// Disable signals originating from the terminal's line discipline, i.e.
// SIGINT (^C), SIGQUIT (^\), and SIGTSTP (^Z). They are enabled by default.
notcurses_linesigs_disable :: (n: *notcurses) -> s32 #foreign libnotcurses;

// Restore signals originating from the terminal's line discipline, i.e.
// SIGINT (^C), SIGQUIT (^\), and SIGTSTP (^Z), if disabled.
notcurses_linesigs_enable :: (n: *notcurses) -> s32 #foreign libnotcurses;

// Refresh the physical screen to match what was last rendered (i.e., without
// reflecting any changes since the last call to notcurses_render()). This is
// primarily useful if the screen is externally corrupted, or if an
// NCKEY_RESIZE event has been read and you're not yet ready to render. The
// current screen geometry is returned in 'y' and 'x', if they are not NULL.
notcurses_refresh :: (n: *notcurses, y: *u32, x: *u32) -> s32 #foreign libnotcurses;

// Extract the Notcurses context to which this plane is attached.
ncplane_notcurses :: (n: *ncplane) -> *notcurses #foreign libnotcurses;

ncplane_notcurses_const :: (n: *ncplane) -> *notcurses #foreign libnotcurses;

// Return the dimensions of this ncplane. y or x may be NULL.
ncplane_dim_yx :: (n: *ncplane, y: *u32, x: *u32) -> void #foreign libnotcurses;

// notcurses_stdplane(), plus free bonus dimensions written to non-NULL y/x!
notcurses_stddim_yx :: (nc: *notcurses, y: *u32, x: *u32) -> *ncplane #foreign libnotcurses_ffi;

notcurses_stddim_yx_const :: (nc: *notcurses, y: *u32, x: *u32) -> *ncplane #foreign libnotcurses_ffi;

ncplane_dim_y :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

ncplane_dim_x :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Retrieve pixel geometry for the display region ('pxy', 'pxx'), each cell
// ('celldimy', 'celldimx'), and the maximum displayable bitmap ('maxbmapy',
// 'maxbmapx'). If bitmaps are not supported, or if there is no artificial
// limit on bitmap size, 'maxbmapy' and 'maxbmapx' will be 0. Any of the
// geometry arguments may be NULL.
ncplane_pixel_geom :: (n: *ncplane, pxy: *u32, pxx: *u32, celldimy: *u32, celldimx: *u32, maxbmapy: *u32, maxbmapx: *u32) -> void #foreign libnotcurses;

// Return our current idea of the terminal dimensions in rows and cols.
notcurses_term_dim_yx :: (n: *notcurses, rows: *u32, cols: *u32) -> void #foreign libnotcurses_ffi;

// Retrieve the contents of the specified cell as last rendered. Returns the EGC
// or NULL on error. This EGC must be free()d by the caller. The stylemask and
// channels are written to 'stylemask' and 'channels', respectively.
notcurses_at_yx :: (nc: *notcurses, yoff: u32, xoff: u32, stylemask: *u16, channels: *u64) -> *u8 #foreign libnotcurses;

ncplane_options :: struct {
    y:        s32; // vertical placement relative to parent plane
    x:        s32; // horizontal placement relative to parent plane
    rows:     u32; // rows, must be >0 unless NCPLANE_OPTION_MARGINALIZED
    cols:     u32; // columns, must be >0 unless NCPLANE_OPTION_MARGINALIZED
    userptr:  *void; // user curry, may be NULL
    name:     *u8; // name (used only for debugging), may be NULL
    resizecb: #type (unknown0: *ncplane) -> s32 #c_call; // callback when parent is resized
    flags:    u64; // closure over NCPLANE_OPTION_*
    margin_b: u32; // margins (require NCPLANE_OPTION_MARGINALIZED)
    margin_r: u32; // margins (require NCPLANE_OPTION_MARGINALIZED)
}

// Create a new ncplane bound to plane 'n', at the offset 'y'x'x' (relative to
// the origin of 'n') and the specified size. The number of 'rows' and 'cols'
// must both be positive. This plane is initially at the top of the z-buffer,
// as if ncplane_move_top() had been called on it. The void* 'userptr' can be
// retrieved (and reset) later. A 'name' can be set, used in debugging.
ncplane_create :: (n: *ncplane, nopts: *ncplane_options) -> *ncplane #foreign libnotcurses;

// Same as ncplane_create(), but creates a new pile. The returned plane will
// be the top, bottom, and root of this new pile.
ncpile_create :: (nc: *notcurses, nopts: *ncplane_options) -> *ncplane #foreign libnotcurses;

// resize the plane to the visual region's size (used for the standard plane).
ncplane_resize_maximize :: (n: *ncplane) -> s32 #foreign libnotcurses;

// resize the plane to its parent's size, attempting to enforce the margins
// supplied along with NCPLANE_OPTION_MARGINALIZED.
ncplane_resize_marginalized :: (n: *ncplane) -> s32 #foreign libnotcurses;

// realign the plane 'n' against its parent, using the alignments specified
// with NCPLANE_OPTION_HORALIGNED and/or NCPLANE_OPTION_VERALIGNED.
ncplane_resize_realign :: (n: *ncplane) -> s32 #foreign libnotcurses;

// move the plane such that it is entirely within its parent, if possible.
// no resizing is performed.
ncplane_resize_placewithin :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Replace the ncplane's existing resizecb with 'resizecb' (which may be NULL).
// The standard plane's resizecb may not be changed.
ncplane_set_resizecb :: (n: *ncplane, resizecb: #type (unknown0: *ncplane) -> s32 #c_call) -> void #foreign libnotcurses;

// Returns the ncplane's current resize callback.
ncplane_resizecb :: (unknown0: *ncplane, n: *ncplane) -> ((unknown0: *ncplane, n: *ncplane) -> s32 #c_call) #foreign libnotcurses;

// Set the plane's name (may be NULL), replacing any current name.
ncplane_set_name :: (n: *ncplane, name: *u8) -> s32 #foreign libnotcurses;

// Return a heap-allocated copy of the plane's name, or NULL if it has none.
ncplane_name :: (n: *ncplane) -> *u8 #foreign libnotcurses;

// Plane 'n' will be unbound from its parent plane, and will be made a bound
// child of 'newparent'. It is an error if 'n' or 'newparent' are NULL. If
// 'newparent' is equal to 'n', 'n' becomes the root of a new pile, unless 'n'
// is already the root of a pile, in which case this is a no-op. Returns 'n'.
// The standard plane cannot be reparented. Any planes bound to 'n' are
// reparented to the previous parent of 'n'.
ncplane_reparent :: (n: *ncplane, newparent: *ncplane) -> *ncplane #foreign libnotcurses;

// The same as ncplane_reparent(), except any planes bound to 'n' come along
// with it to its new destination. Their z-order is maintained. If 'newparent'
// is an ancestor of 'n', NULL is returned, and no changes are made.
ncplane_reparent_family :: (n: *ncplane, newparent: *ncplane) -> *ncplane #foreign libnotcurses;

// Duplicate an existing ncplane. The new plane will have the same geometry,
// will duplicate all content, and will start with the same rendering state.
// The new plane will be immediately above the old one on the z axis, and will
// be bound to the same parent (unless 'n' is a root plane, in which case the
// new plane will be bound to it). Bound planes are *not* duplicated; the new
// plane is bound to the parent of 'n', but has no bound planes.
ncplane_dup :: (n: *ncplane, opaque: *void) -> *ncplane #foreign libnotcurses;

// provided a coordinate relative to the origin of 'src', map it to the same
// absolute coordinate relative to the origin of 'dst'. either or both of 'y'
// and 'x' may be NULL. if 'dst' is NULL, it is taken to be the standard plane.
ncplane_translate :: (src: *ncplane, dst: *ncplane, y: *s32, x: *s32) -> void #foreign libnotcurses;

// Fed absolute 'y'/'x' coordinates, determine whether that coordinate is
// within the ncplane 'n'. If not, return false. If so, return true. Either
// way, translate the absolute coordinates relative to 'n'. If the point is not
// within 'n', these coordinates will not be within the dimensions of the plane.
ncplane_translate_abs :: (n: *ncplane, y: *s32, x: *s32) -> bool #foreign libnotcurses;

// All planes are created with scrolling disabled. Scrolling can be dynamically
// controlled with ncplane_set_scrolling(). Returns true if scrolling was
// previously enabled, or false if it was disabled.
ncplane_set_scrolling :: (n: *ncplane, scrollp: u32) -> bool #foreign libnotcurses;

ncplane_scrolling_p :: (n: *ncplane) -> bool #foreign libnotcurses;

// By default, planes are created with autogrow disabled. Autogrow can be
// dynamically controlled with ncplane_set_autogrow(). Returns true if
// autogrow was previously enabled, or false if it was disabled.
ncplane_set_autogrow :: (n: *ncplane, growp: u32) -> bool #foreign libnotcurses;

ncplane_autogrow_p :: (n: *ncplane) -> bool #foreign libnotcurses;

// Palette API. Some terminals only support 256 colors, but allow the full
// palette to be specified with arbitrary RGB colors. In all cases, it's more
// performant to use indexed colors, since it's much less data to write to the
// terminal. If you can limit yourself to 256 colors, that's probably best.
ncpalette :: struct {
    chans: [256] u32; // RGB values as regular ol' channels
}

// Create a new palette store. It will be initialized with notcurses' best
// knowledge of the currently configured palette.
ncpalette_new :: (nc: *notcurses) -> *ncpalette #foreign libnotcurses;

// Attempt to configure the terminal with the provided palette 'p'. Does not
// transfer ownership of 'p'; ncpalette_free() can (ought) still be called.
ncpalette_use :: (nc: *notcurses, p: *ncpalette) -> s32 #foreign libnotcurses;

// Manipulate entries in the palette store 'p'. These are *not* locked.
ncpalette_set_rgb8 :: (p: *ncpalette, idx: s32, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

ncpalette_set :: (p: *ncpalette, idx: s32, rgb: u32) -> s32 #foreign libnotcurses_ffi;

ncpalette_get :: (p: *ncpalette, idx: s32, palent: *u32) -> s32 #foreign libnotcurses_ffi;

ncpalette_get_rgb8 :: (p: *ncpalette, idx: s32, r: *u32, g: *u32, b: *u32) -> s32 #foreign libnotcurses_ffi;

// Free the palette store 'p'.
ncpalette_free :: (p: *ncpalette) -> void #foreign libnotcurses;

// Capabilities, derived from terminfo, environment variables, and queries
nccapabilities :: struct {
    colors:            u32; // size of palette for indexed colors
    utf8:              bool; // are we using utf-8 encoding? from nl_langinfo(3)
    rgb:               bool; // 24bit color? COLORTERM/heuristics/terminfo 'rgb'
    can_change_colors: bool; // can we change the palette? terminfo 'ccc'

    halfblocks:        bool; // we assume halfblocks, but some are known to lack them
    quadrants:         bool; // do we have (good, vetted) Unicode 1 quadrant support?
    sextants:          bool; // do we have (good, vetted) Unicode 13 sextant support?
    octants:           bool; // do we have (good, vetted) Unicode 16 octant support?
    braille:           bool; // do we have Braille support? (linux console does not)
}

// Returns a 16-bit bitmask of supported curses-style attributes
// (NCSTYLE_UNDERLINE, NCSTYLE_BOLD, etc.) The attribute is only
// indicated as supported if the terminal can support it together with color.
// For more information, see the "ncv" capability in terminfo(5).
notcurses_supported_styles :: (nc: *notcurses) -> u16 #foreign libnotcurses;

// Returns the number of simultaneous colors claimed to be supported, or 1 if
// there is no color support. Note that several terminal emulators advertise
// more colors than they actually support, downsampling internally.
notcurses_palette_size :: (nc: *notcurses) -> u32 #foreign libnotcurses;

// Returns the name (and sometimes version) of the terminal, as Notcurses
// has been best able to determine.
notcurses_detected_terminal :: (nc: *notcurses) -> *u8 #foreign libnotcurses;

notcurses_capabilities :: (n: *notcurses) -> *nccapabilities #foreign libnotcurses;

// pixel blitting implementations. informative only; don't special-case
// based off any of this information!
ncpixelimpl_e :: enum u32 {
    NONE           :: 0;
    SIXEL          :: 1;
    LINUXFB        :: 2;
    ITERM2         :: 3;

    KITTY_STATIC   :: 4;

    KITTY_ANIMATED :: 5;

    KITTY_SELFREF  :: 6;

    NCPIXEL_NONE           :: NONE;
    NCPIXEL_SIXEL          :: SIXEL;
    NCPIXEL_LINUXFB        :: LINUXFB;
    NCPIXEL_ITERM2         :: ITERM2;

    NCPIXEL_KITTY_STATIC   :: KITTY_STATIC;

    NCPIXEL_KITTY_ANIMATED :: KITTY_ANIMATED;

    NCPIXEL_KITTY_SELFREF  :: KITTY_SELFREF;
}

// Can we blit pixel-accurate bitmaps?
notcurses_check_pixel_support :: (nc: *notcurses) -> ncpixelimpl_e #foreign libnotcurses;

// Can we set the "hardware" palette? Requires the "ccc" terminfo capability,
// and that the number of colors supported is at least the size of our
// ncpalette structure.
nccapability_canchangecolor :: (caps: *nccapabilities) -> bool #foreign libnotcurses_ffi;

// Can we emit 24-bit, three-channel RGB foregrounds and backgrounds?
notcurses_cantruecolor :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we directly specify RGB values per cell, or only use palettes?
notcurses_canchangecolor :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we fade? Fading requires either the "rgb" or "ccc" terminfo capability.
notcurses_canfade :: (n: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we load images? This requires being built against FFmpeg/OIIO.
notcurses_canopen_images :: (nc: *notcurses) -> bool #foreign libnotcurses;

// Can we load videos? This requires being built against FFmpeg.
notcurses_canopen_videos :: (nc: *notcurses) -> bool #foreign libnotcurses;

// Is our encoding UTF-8? Requires LANG being set to a UTF8 locale.
notcurses_canutf8 :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode halfblocks? Any Unicode implementation can.
notcurses_canhalfblock :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode quadrants?
notcurses_canquadrant :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode 13 sextants?
notcurses_cansextant :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode 16 octants?
notcurses_canoctant :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode Braille?
notcurses_canbraille :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// Can we blit pixel-accurate bitmaps?
notcurses_canpixel :: (nc: *notcurses) -> bool #foreign libnotcurses_ffi;

// whenever a new field is added here, ensure we add the proper rule to
// notcurses_stats_reset(), so that values are preserved in the stash stats.
ncstats :: struct {
    renders:           u64; // successful ncpile_render() runs
    writeouts:         u64; // successful ncpile_rasterize() runs
    failed_renders:    u64; // aborted renders, should be 0
    failed_writeouts:  u64; // aborted writes
    raster_bytes:      u64; // bytes emitted to ttyfp
    raster_max_bytes:  s64; // max bytes emitted for a frame
    raster_min_bytes:  s64; // min bytes emitted for a frame
    render_ns:         u64; // nanoseconds spent rendering
    render_max_ns:     s64; // max ns spent in render for a frame
    render_min_ns:     s64; // min ns spent in render for a frame
    raster_ns:         u64; // nanoseconds spent rasterizing
    raster_max_ns:     s64; // max ns spent in raster for a frame
    raster_min_ns:     s64; // min ns spent in raster for a frame
    writeout_ns:       u64; // nanoseconds spent writing frames to terminal
    writeout_max_ns:   s64; // max ns spent writing out a frame
    writeout_min_ns:   s64; // min ns spent writing out a frame
    cellelisions:      u64; // cells we elided entirely thanks to damage maps
    cellemissions:     u64; // total number of cells emitted to terminal
    fgelisions:        u64; // RGB fg elision count
    fgemissions:       u64; // RGB fg emissions
    bgelisions:        u64; // RGB bg elision count
    bgemissions:       u64; // RGB bg emissions
    defaultelisions:   u64; // default color was emitted
    defaultemissions:  u64; // default color was elided
    refreshes:         u64; // refresh requests (non-optimized redraw)
    sprixelemissions:  u64; // sprixel draw count
    sprixelelisions:   u64; // sprixel elision count
    sprixelbytes:      u64; // sprixel bytes emitted
    appsync_updates:   u64; // how many application-synchronized updates?
    input_errors:      u64; // errors processing control sequences/utf8
    input_events:      u64; // characters returned to userspace
    hpa_gratuitous:    u64; // unnecessary hpas issued
    cell_geo_changes:  u64; // cell geometry changes (resizes)
    pixel_geo_changes: u64; // pixel geometry changes (font resize)

    fbbytes:           u64; // total bytes devoted to all active framebuffers
    planes:            u32; // number of planes currently in existence
}

// Allocate an ncstats object. Use this rather than allocating your own, since
// future versions of Notcurses might enlarge this structure.
notcurses_stats_alloc :: (nc: *notcurses) -> *ncstats #foreign libnotcurses;

// Acquire an atomic snapshot of the Notcurses object's stats.
notcurses_stats :: (nc: *notcurses, stats: *ncstats) -> void #foreign libnotcurses;

// Reset all cumulative stats (immediate ones, such as fbbytes, are not reset),
// first copying them into |*stats| (if |stats| is not NULL).
notcurses_stats_reset :: (nc: *notcurses, stats: *ncstats) -> void #foreign libnotcurses;

// Resize the specified ncplane. The four parameters 'keepy', 'keepx',
// 'keepleny', and 'keeplenx' define a subset of the ncplane to keep,
// unchanged. This may be a region of size 0, though none of these four
// parameters may be negative. 'keepx' and 'keepy' are relative to the ncplane.
// They must specify a coordinate within the ncplane's totality. 'yoff' and
// 'xoff' are relative to 'keepy' and 'keepx', and place the upper-left corner
// of the resized ncplane. Finally, 'ylen' and 'xlen' are the dimensions of the
// ncplane after resizing. 'ylen' must be greater than or equal to 'keepleny',
// and 'xlen' must be greater than or equal to 'keeplenx'. It is an error to
// attempt to resize the standard plane. If either of 'keepleny' or 'keeplenx'
// is non-zero, both must be non-zero.
//
// Essentially, the kept material does not move. It serves to anchor the
// resized plane. If there is no kept material, the plane can move freely.
ncplane_resize :: (n: *ncplane, keepy: s32, keepx: s32, keepleny: u32, keeplenx: u32, yoff: s32, xoff: s32, ylen: u32, xlen: u32) -> s32 #foreign libnotcurses;

// Resize the plane, retaining what data we can (everything, unless we're
// shrinking in some dimension). Keep the origin where it is.
ncplane_resize_simple :: (n: *ncplane, ylen: u32, xlen: u32) -> s32 #foreign libnotcurses_ffi;

// Destroy ncplane 'n'. None of its contents will be visible after the next
// call to notcurses_render(). It is an error to attempt to destroy the
// standard plane. It is a noop if 'n' is NULL.
ncplane_destroy :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Set the ncplane's base nccell to 'c'. The base cell is used for purposes of
// rendering anywhere that the ncplane's gcluster is 0. Note that the base cell
// is not affected by ncplane_erase(). 'c' must not be a secondary cell from a
// multicolumn EGC.
ncplane_set_base_cell :: (n: *ncplane, c: *nccell) -> s32 #foreign libnotcurses;

// Set the ncplane's base nccell. It will be used for purposes of rendering
// anywhere that the ncplane's gcluster is 0. Note that the base cell is not
// affected by ncplane_erase(). 'egc' must be an extended grapheme cluster.
// Returns the number of bytes copied out of 'gcluster', or -1 on failure.
ncplane_set_base :: (n: *ncplane, egc: *u8, stylemask: u16, channels: u64) -> s32 #foreign libnotcurses;

// Extract the ncplane's base nccell into 'c'. The reference is invalidated if
// 'ncp' is destroyed.
ncplane_base :: (n: *ncplane, c: *nccell) -> s32 #foreign libnotcurses;

// Get the origin of plane 'n' relative to its bound plane, or pile (if 'n' is
// a root plane). To get absolute coordinates, use ncplane_abs_yx().
ncplane_yx :: (n: *ncplane, y: *s32, x: *s32) -> void #foreign libnotcurses;

ncplane_y :: (n: *ncplane) -> s32 #foreign libnotcurses;
ncplane_x :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Move this plane relative to the standard plane, or the plane to which it is
// bound (if it is bound to a plane). It is an error to attempt to move the
// standard plane.
ncplane_move_yx :: (n: *ncplane, y: s32, x: s32) -> s32 #foreign libnotcurses;

// Move this plane relative to its current location. Negative values move up
// and left, respectively. Pass 0 to hold an axis constant.
ncplane_move_rel :: (n: *ncplane, y: s32, x: s32) -> s32 #foreign libnotcurses_ffi;

// Get the origin of plane 'n' relative to its pile. Either or both of 'x' and
// 'y' may be NULL.
ncplane_abs_yx :: (n: *ncplane, y: *s32, x: *s32) -> void #foreign libnotcurses;

ncplane_abs_y :: (n: *ncplane) -> s32 #foreign libnotcurses;
ncplane_abs_x :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Get the plane to which the plane 'n' is bound, if any.
ncplane_parent :: (n: *ncplane) -> *ncplane #foreign libnotcurses;

ncplane_parent_const :: (n: *ncplane) -> *ncplane #foreign libnotcurses;

// Return non-zero iff 'n' is a proper descendent of 'ancestor'.
ncplane_descendant_p :: (n: *ncplane, ancestor: *ncplane) -> s32 #foreign libnotcurses_ffi;

// Splice ncplane 'n' out of the z-buffer, and reinsert it above 'above'.
// Returns non-zero if 'n' is already in the desired location. 'n' and
// 'above' must not be the same plane. If 'above' is NULL, 'n' is moved
// to the bottom of its pile.
ncplane_move_above :: (n: *ncplane, above: *ncplane) -> s32 #foreign libnotcurses;

// Splice ncplane 'n' out of the z-buffer, and reinsert it below 'below'.
// Returns non-zero if 'n' is already in the desired location. 'n' and
// 'below' must not be the same plane. If 'below' is NULL, 'n' is moved to
// the top of its pile.
ncplane_move_below :: (n: *ncplane, below: *ncplane) -> s32 #foreign libnotcurses;

// Splice ncplane 'n' out of the z-buffer; reinsert it at the top or bottom.
ncplane_move_top :: (n: *ncplane) -> void #foreign libnotcurses_ffi;

ncplane_move_bottom :: (n: *ncplane) -> void #foreign libnotcurses_ffi;

// Splice ncplane 'n' and its bound planes out of the z-buffer, and reinsert
// them above or below 'targ'. Relative order will be maintained between the
// reinserted planes. For a plane E bound to C, with z-ordering A B C D E,
// moving the C family to the top results in C E A B D, while moving it to
// the bottom results in A B D C E.
ncplane_move_family_above :: (n: *ncplane, targ: *ncplane) -> s32 #foreign libnotcurses;

ncplane_move_family_below :: (n: *ncplane, targ: *ncplane) -> s32 #foreign libnotcurses;

ncplane_move_family_top :: (n: *ncplane) -> void #foreign libnotcurses_ffi;

ncplane_move_family_bottom :: (n: *ncplane) -> void #foreign libnotcurses_ffi;

// Destroy ncplane 'n' and all its bound descendants. It is a noop if 'n'
// is NULL. It is an error to attempt to destroy the standard plane.
ncplane_family_destroy :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Return the plane below this one, or NULL if this is at the bottom.
ncplane_below :: (n: *ncplane) -> *ncplane #foreign libnotcurses;

// Return the plane above this one, or NULL if this is at the top.
ncplane_above :: (n: *ncplane) -> *ncplane #foreign libnotcurses;

// Effect |r| scroll events on the plane |n|. Returns an error if |n| is not
// a scrolling plane, and otherwise returns the number of lines scrolled.
ncplane_scrollup :: (n: *ncplane, r: s32) -> s32 #foreign libnotcurses;

// Scroll |n| up until |child| is no longer hidden beneath it. Returns an
// error if |child| is not a child of |n|, or |n| is not scrolling, or |child|
// is fixed. Returns the number of scrolling events otherwise (might be 0).
// If the child plane is not fixed, it will likely scroll as well.
ncplane_scrollup_child :: (n: *ncplane, child: *ncplane) -> s32 #foreign libnotcurses;

// Rotate the plane π/2 radians clockwise or counterclockwise. This cannot
// be performed on arbitrary planes, because glyphs cannot be arbitrarily
// rotated. The glyphs which can be rotated are limited: line-drawing
// characters, spaces, half blocks, and full blocks. The plane must have
// an even number of columns. Use the ncvisual rotation for a more
// flexible approach.
ncplane_rotate_cw :: (n: *ncplane) -> s32 #foreign libnotcurses;

ncplane_rotate_ccw :: (n: *ncplane) -> s32 #foreign libnotcurses;

// Retrieve the current contents of the cell under the cursor. The EGC is
// returned, or NULL on error. This EGC must be free()d by the caller. The
// stylemask and channels are written to 'stylemask' and 'channels', respectively.
ncplane_at_cursor :: (n: *ncplane, stylemask: *u16, channels: *u64) -> *u8 #foreign libnotcurses;

// Retrieve the current contents of the cell under the cursor into 'c'. This
// cell is invalidated if the associated plane is destroyed. Returns the number
// of bytes in the EGC, or -1 on error.
ncplane_at_cursor_cell :: (n: *ncplane, c: *nccell) -> s32 #foreign libnotcurses;

// Retrieve the current contents of the specified cell. The EGC is returned, or
// NULL on error. This EGC must be free()d by the caller. The stylemask and
// channels are written to 'stylemask' and 'channels', respectively. The return
// represents how the cell will be used during rendering, and thus integrates
// any base cell where appropriate. If called upon the secondary columns of a
// wide glyph, the EGC will be returned (i.e. this function does not distinguish
// between the primary and secondary columns of a wide glyph). If called on a
// sprixel plane, its control sequence is returned for all valid locations.
ncplane_at_yx :: (n: *ncplane, y: s32, x: s32, stylemask: *u16, channels: *u64) -> *u8 #foreign libnotcurses;

// Retrieve the current contents of the specified cell into 'c'. This cell is
// invalidated if the associated plane is destroyed. Returns the number of
// bytes in the EGC, or -1 on error. Unlike ncplane_at_yx(), when called upon
// the secondary columns of a wide glyph, the return can be distinguished from
// the primary column (nccell_wide_right_p(c) will return true). It is an
// error to call this on a sprixel plane (unlike ncplane_at_yx()).
ncplane_at_yx_cell :: (n: *ncplane, y: s32, x: s32, c: *nccell) -> s32 #foreign libnotcurses;

// Create a flat string from the EGCs of the selected region of the ncplane
// 'n'. Start at the plane's 'begy'x'begx' coordinate (which must lie on the
// plane), continuing for 'leny'x'lenx' cells. Either or both of 'leny' and
// 'lenx' can be specified as 0 to go through the boundary of the plane.
// -1 can be specified for 'begx'/'begy' to use the current cursor location.
ncplane_contents :: (n: *ncplane, begy: s32, begx: s32, leny: u32, lenx: u32) -> *u8 #foreign libnotcurses;

// Manipulate the opaque user pointer associated with this plane.
// ncplane_set_userptr() returns the previous userptr after replacing
// it with 'opaque'. the others simply return the userptr.
ncplane_set_userptr :: (n: *ncplane, opaque: *void) -> *void #foreign libnotcurses;

ncplane_userptr :: (n: *ncplane) -> *void #foreign libnotcurses;

// Find the center coordinate of a plane, preferring the top/left in the
// case of an even number of rows/columns (in such a case, there will be one
// more cell to the bottom/right of the center than the top/left). The
// center is then modified relative to the plane's origin.
ncplane_center_abs :: (n: *ncplane, y: *s32, x: *s32) -> void #foreign libnotcurses;

// Create an RGBA flat array from the selected region of the ncplane 'nc'.
// Start at the plane's 'begy'x'begx' coordinate (which must lie on the
// plane), continuing for 'leny'x'lenx' cells. Either or both of 'leny' and
// 'lenx' can be specified as 0 to go through the boundary of the plane.
// Only glyphs from the specified ncblitset may be present. If 'pxdimy' and/or
// 'pxdimx' are non-NULL, they will be filled in with the total pixel geometry.
ncplane_as_rgba :: (n: *ncplane, blit: ncblitter_e, begy: s32, begx: s32, leny: u32, lenx: u32, pxdimy: *u32, pxdimx: *u32) -> *u32 #foreign libnotcurses;

// Return the offset into 'availu' at which 'u' ought be output given the
// requirements of 'align'. Return -INT_MAX on invalid 'align'. Undefined
// behavior on negative 'availu' or 'u'.
notcurses_align :: (availu: s32, align: ncalign_e, u: s32) -> s32 #foreign libnotcurses_ffi;

// Return the column at which 'c' cols ought start in order to be aligned
// according to 'align' within ncplane 'n'. Return -INT_MAX on invalid
// 'align'. Undefined behavior on negative 'c'.
ncplane_halign :: (n: *ncplane, align: ncalign_e, c: s32) -> s32 #foreign libnotcurses_ffi;

// Return the row at which 'r' rows ought start in order to be aligned
// according to 'align' within ncplane 'n'. Return -INT_MAX on invalid
// 'align'. Undefined behavior on negative 'r'.
ncplane_valign :: (n: *ncplane, align: ncalign_e, r: s32) -> s32 #foreign libnotcurses_ffi;

// Move the cursor to the specified position (the cursor needn't be visible).
// Pass -1 as either coordinate to hold that axis constant. Returns -1 if the
// move would place the cursor outside the plane.
ncplane_cursor_move_yx :: (n: *ncplane, y: s32, x: s32) -> s32 #foreign libnotcurses;

// Move the cursor relative to the current cursor position (the cursor needn't
// be visible). Returns -1 on error, including target position exceeding the
// plane's dimensions.
ncplane_cursor_move_rel :: (n: *ncplane, y: s32, x: s32) -> s32 #foreign libnotcurses;

// Move the cursor to 0, 0. Can't fail.
ncplane_home :: (n: *ncplane) -> void #foreign libnotcurses;

// Get the current position of the cursor within n. y and/or x may be NULL.
ncplane_cursor_yx :: (n: *ncplane, y: *u32, x: *u32) -> void #foreign libnotcurses;

ncplane_cursor_y :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

ncplane_cursor_x :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Get the current colors and alpha values for ncplane 'n'.
ncplane_channels :: (n: *ncplane) -> u64 #foreign libnotcurses;

// Get the current styling for the ncplane 'n'.
ncplane_styles :: (n: *ncplane) -> u16 #foreign libnotcurses;

// Replace the cell at the specified coordinates with the provided cell 'c',
// and advance the cursor by the width of the cell (but not past the end of the
// plane). On success, returns the number of columns the cursor was advanced.
// 'c' must already be associated with 'n'. On failure, -1 is returned.
ncplane_putc_yx :: (n: *ncplane, y: s32, x: s32, c: *nccell) -> s32 #foreign libnotcurses;

// Call ncplane_putc_yx() for the current cursor location.
ncplane_putc :: (n: *ncplane, c: *nccell) -> s32 #foreign libnotcurses_ffi;

// Replace the cell at the specified coordinates with the provided 7-bit char
// 'c'. Advance the cursor by 1. On success, returns the number of columns the
// cursor was advanced. On failure, returns -1. This works whether the
// underlying char is signed or unsigned.
ncplane_putchar_yx :: (n: *ncplane, y: s32, x: s32, c: u8) -> s32 #foreign libnotcurses_ffi;

// Call ncplane_putchar_yx() at the current cursor location.
ncplane_putchar :: (n: *ncplane, c: u8) -> s32 #foreign libnotcurses_ffi;

// Replace the EGC underneath us, but retain the styling. The current styling
// of the plane will not be changed.
ncplane_putchar_stained :: (n: *ncplane, c: u8) -> s32 #foreign libnotcurses;

// Replace the cell at the specified coordinates with the provided EGC, and
// advance the cursor by the width of the cluster (but not past the end of the
// plane). On success, returns the number of columns the cursor was advanced.
// On failure, -1 is returned. The number of bytes converted from gclust is
// written to 'sbytes' if non-NULL.
ncplane_putegc_yx :: (n: *ncplane, y: s32, x: s32, gclust: *u8, sbytes: *u64) -> s32 #foreign libnotcurses;

// Call ncplane_putegc_yx() at the current cursor location.
ncplane_putegc :: (n: *ncplane, gclust: *u8, sbytes: *u64) -> s32 #foreign libnotcurses_ffi;

// Replace the EGC underneath us, but retain the styling. The current styling
// of the plane will not be changed.
ncplane_putegc_stained :: (n: *ncplane, gclust: *u8, sbytes: *u64) -> s32 #foreign libnotcurses;

// generate a heap-allocated UTF-8 encoding of the wide string 'src'.
ncwcsrtombs :: (src: *s32) -> *u8 #foreign libnotcurses_ffi;

// ncplane_putegc(), but following a conversion from wchar_t to UTF-8 multibyte.
ncplane_putwegc :: (n: *ncplane, gclust: *s32, sbytes: *u64) -> s32 #foreign libnotcurses_ffi;

// Call ncplane_putwegc() after successfully moving to y, x.
ncplane_putwegc_yx :: (n: *ncplane, y: s32, x: s32, gclust: *s32, sbytes: *u64) -> s32 #foreign libnotcurses_ffi;

// Replace the EGC underneath us, but retain the styling. The current styling
// of the plane will not be changed.
ncplane_putwegc_stained :: (n: *ncplane, gclust: *s32, sbytes: *u64) -> s32 #foreign libnotcurses;

// Write a series of EGCs to the current location, using the current style.
// They will be interpreted as a series of columns (according to the definition
// of ncplane_putc()). Advances the cursor by some positive number of columns
// (though not beyond the end of the plane); this number is returned on success.
// On error, a non-positive number is returned, indicating the number of columns
// which were written before the error.
ncplane_putstr_yx :: (n: *ncplane, y: s32, x: s32, gclusters: *u8) -> s32 #foreign libnotcurses_ffi;

ncplane_putstr :: (n: *ncplane, gclustarr: *u8) -> s32 #foreign libnotcurses_ffi;

ncplane_putstr_aligned :: (n: *ncplane, y: s32, align: ncalign_e, s: *u8) -> s32 #foreign libnotcurses_ffi;

// Replace a string's worth of glyphs at the current cursor location, but
// retain the styling. The current styling of the plane will not be changed.
ncplane_putstr_stained :: (n: *ncplane, gclusters: *u8) -> s32 #foreign libnotcurses_ffi;

ncplane_putnstr_aligned :: (n: *ncplane, y: s32, align: ncalign_e, s: u64, str: *u8) -> s32 #foreign libnotcurses;

// Write a series of EGCs to the current location, using the current style.
// They will be interpreted as a series of columns (according to the definition
// of ncplane_putc()). Advances the cursor by some positive number of columns
// (though not beyond the end of the plane); this number is returned on success.
// On error, a non-positive number is returned, indicating the number of columns
// which were written before the error. No more than 's' bytes will be written.
ncplane_putnstr_yx :: (n: *ncplane, y: s32, x: s32, s: u64, gclusters: *u8) -> s32 #foreign libnotcurses_ffi;

ncplane_putnstr :: (n: *ncplane, s: u64, gclustarr: *u8) -> s32 #foreign libnotcurses_ffi;

// ncplane_putstr(), but following a conversion from wchar_t to UTF-8 multibyte.
// FIXME do this as a loop over ncplane_putegc_yx and save the big allocation+copy
ncplane_putwstr_yx :: (n: *ncplane, y: s32, x: s32, gclustarr: *s32) -> s32 #foreign libnotcurses_ffi;

ncplane_putwstr_aligned :: (n: *ncplane, y: s32, align: ncalign_e, gclustarr: *s32) -> s32 #foreign libnotcurses_ffi;

ncplane_putwstr_stained :: (n: *ncplane, gclustarr: *s32) -> s32 #foreign libnotcurses;

ncplane_putwstr :: (n: *ncplane, gclustarr: *s32) -> s32 #foreign libnotcurses_ffi;

// Replace the cell at the specified coordinates with the provided UTF-32
// 'u'. Advance the cursor by the character's width as reported by wcwidth().
// On success, returns the number of columns written. On failure, returns -1.
ncplane_pututf32_yx :: (n: *ncplane, y: s32, x: s32, u: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_putwc_yx :: (n: *ncplane, y: s32, x: s32, w: s32) -> s32 #foreign libnotcurses_ffi;

// Write 'w' at the current cursor position, using the plane's current styling.
ncplane_putwc :: (n: *ncplane, w: s32) -> s32 #foreign libnotcurses_ffi;

// Write the first Unicode character from 'w' at the current cursor position,
// using the plane's current styling. In environments where wchar_t is only
// 16 bits (Windows, essentially), a single Unicode might require two wchar_t
// values forming a surrogate pair. On environments with 32-bit wchar_t, this
// should not happen. If w[0] is a surrogate, it is decoded together with
// w[1], and passed as a single reconstructed UTF-32 character to
// ncplane_pututf32(); 'wchars' will get a value of 2 in this case. 'wchars'
// otherwise gets a value of 1. A surrogate followed by an invalid pairing
// will set 'wchars' to 2, but return -1 immediately.
ncplane_putwc_utf32 :: (n: *ncplane, w: *s32, wchars: *u32) -> s32 #foreign libnotcurses_ffi;

// Write 'w' at the current cursor position, using any preexisting styling
// at that cell.
ncplane_putwc_stained :: (n: *ncplane, w: s32) -> s32 #foreign libnotcurses_ffi;

ncplane_printf_CFormat :: (n: *ncplane, format: *u8, __args: ..Any) -> s32 #foreign libnotcurses_ffi "ncplane_printf";
ncplane_printf :: (n: *ncplane, format: string, __args: ..Any) -> s32 {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, format, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return ncplane_printf_CFormat(n, "%s", formatted_text.data);
} @PrintLike

ncplane_printf_yx_CFormat :: (n: *ncplane, y: s32, x: s32, format: *u8, __args: ..Any) -> s32 #foreign libnotcurses_ffi "ncplane_printf_yx";
ncplane_printf_yx :: (n: *ncplane, y: s32, x: s32, format: string, __args: ..Any) -> s32 {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, format, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return ncplane_printf_yx_CFormat(n, y, x, "%s", formatted_text.data);
} @PrintLike

ncplane_printf_aligned_CFormat :: (n: *ncplane, y: s32, align: ncalign_e, format: *u8, __args: ..Any) -> s32 #foreign libnotcurses_ffi "ncplane_printf_aligned";
ncplane_printf_aligned :: (n: *ncplane, y: s32, align: ncalign_e, format: string, __args: ..Any) -> s32 {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, format, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return ncplane_printf_aligned_CFormat(n, y, align, "%s", formatted_text.data);
} @PrintLike

ncplane_printf_stained_CFormat :: (n: *ncplane, format: *u8, __args: ..Any) -> s32 #foreign libnotcurses_ffi "ncplane_printf_stained";
ncplane_printf_stained :: (n: *ncplane, format: string, __args: ..Any) -> s32 {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, format, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return ncplane_printf_stained_CFormat(n, "%s", formatted_text.data);
} @PrintLike

// Write the specified text to the plane, breaking lines sensibly, beginning at
// the specified line. Returns the number of columns written. When breaking a
// line, the line will be cleared to the end of the plane (the last line will
// *not* be so cleared). The number of bytes written from the input is written
// to '*bytes' if it is not NULL. Cleared columns are included in the return
// value, but *not* included in the number of bytes written. Leaves the cursor
// at the end of output. A partial write will be accomplished as far as it can;
// determine whether the write completed by inspecting '*bytes'. Can output to
// multiple rows even in the absence of scrolling, but not more rows than are
// available. With scrolling enabled, arbitrary amounts of data can be emitted.
// All provided whitespace is preserved -- ncplane_puttext() followed by an
// appropriate ncplane_contents() will read back the original output.
//
// If 'y' is -1, the first row of output is taken relative to the current
// cursor: it will be left-, right-, or center-aligned in whatever remains
// of the row. On subsequent rows -- or if 'y' is not -1 -- the entire row can
// be used, and alignment works normally.
//
// A newline at any point will move the cursor to the next row.
ncplane_puttext :: (n: *ncplane, y: s32, align: ncalign_e, text: *u8, bytes: *u64) -> s32 #foreign libnotcurses;

// Draw horizontal or vertical lines using the specified cell, starting at the
// current cursor position. The cursor will end at the cell following the last
// cell output (even, perhaps counter-intuitively, when drawing vertical
// lines), just as if ncplane_putc() was called at that spot. Return the
// number of cells drawn on success. On error, return the negative number of
// cells drawn. A length of 0 is an error, resulting in a return of -1.
ncplane_hline_interp :: (n: *ncplane, c: *nccell, len: u32, c1: u64, c2: u64) -> s32 #foreign libnotcurses;

ncplane_hline :: (n: *ncplane, c: *nccell, len: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_vline_interp :: (n: *ncplane, c: *nccell, len: u32, c1: u64, c2: u64) -> s32 #foreign libnotcurses;

ncplane_vline :: (n: *ncplane, c: *nccell, len: u32) -> s32 #foreign libnotcurses_ffi;

// Draw a box with its upper-left corner at the current cursor position, and its
// lower-right corner at 'ystop'x'xstop'. The 6 cells provided are used to draw the
// upper-left, ur, ll, and lr corners, then the horizontal and vertical lines.
// 'ctlword' is defined in the least significant byte, where bits [7, 4] are a
// gradient mask, and [3, 0] are a border mask:
//  * 7, 3: top
//  * 6, 2: right
//  * 5, 1: bottom
//  * 4, 0: left
// If the gradient bit is not set, the styling from the hl/vl cells is used for
// the horizontal and vertical lines, respectively. If the gradient bit is set,
// the color is linearly interpolated between the two relevant corner cells.
//
// By default, vertexes are drawn whether their connecting edges are drawn or
// not. The value of the bits corresponding to NCBOXCORNER_MASK control this,
// and are interpreted as the number of connecting edges necessary to draw a
// given corner. At 0 (the default), corners are always drawn. At 3, corners
// are never drawn (since at most 2 edges can touch a box's corner).
ncplane_box :: (n: *ncplane, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hline: *nccell, vline: *nccell, ystop: u32, xstop: u32, ctlword: u32) -> s32 #foreign libnotcurses;

// Draw a box with its upper-left corner at the current cursor position, having
// dimensions 'ylen'x'xlen'. See ncplane_box() for more information. The
// minimum box size is 2x2, and it cannot be drawn off-plane.
ncplane_box_sized :: (n: *ncplane, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hline: *nccell, vline: *nccell, ystop: u32, xstop: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_perimeter :: (n: *ncplane, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hline: *nccell, vline: *nccell, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

// Starting at the specified coordinate, if its glyph is different from that of
// 'c', 'c' is copied into it, and the original glyph is considered the fill
// target. We do the same to all cardinally-connected cells having this same
// fill target. Returns the number of cells polyfilled. An invalid initial y, x
// is an error. Returns the number of cells filled, or -1 on error. Does
// not update cursor position.
ncplane_polyfill_yx :: (n: *ncplane, y: s32, x: s32, c: *nccell) -> s32 #foreign libnotcurses;

// Draw a gradient with its upper-left corner at the position specified by 'y'/'x',
// where -1 means the current cursor position in that dimension. The area is
// specified by 'ylen'/'xlen', where 0 means "everything remaining below or
// to the right, respectively." The glyph composed of 'egc' and 'styles' is
// used for all cells. The channels specified by 'ul', 'ur', 'll', and 'lr'
// are composed into foreground and background gradients. To do a vertical
// gradient, 'ul' ought equal 'ur' and 'll' ought equal 'lr'. To do a
// horizontal gradient, 'ul' ought equal 'll' and 'ur' ought equal 'ul'. To
// color everything the same, all four channels should be equivalent. The
// resulting alpha values are equal to incoming alpha values. Returns the
// number of cells filled on success, or -1 on failure.
// Palette-indexed color is not supported. Does not update cursor position.
//
// Preconditions for gradient operations (error otherwise):
//
//  all: only RGB colors, unless all four channels match as default
//  all: all alpha values must be the same
//  1x1: all four colors must be the same
//  1xN: both top and both bottom colors must be the same (vertical gradient)
//  Nx1: both left and both right colors must be the same (horizontal gradient)
ncplane_gradient :: (n: *ncplane, y: s32, x: s32, ylen: u32, xlen: u32, egc: *u8, styles: u16, ul: u64, ur: u64, ll: u64, lr: u64) -> s32 #foreign libnotcurses;

// Do a high-resolution gradient using upper blocks and synced backgrounds.
// This doubles the number of vertical gradations, but restricts you to
// half blocks (appearing to be full blocks). Returns the number of cells
// filled on success, or -1 on error. Does not update cursor position.
ncplane_gradient2x1 :: (n: *ncplane, y: s32, x: s32, ylen: u32, xlen: u32, ul: u32, ur: u32, ll: u32, lr: u32) -> s32 #foreign libnotcurses;

// Set the given style throughout the specified region, keeping content and
// channels unchanged. The upper left corner is at 'y', 'x', and -1 may be
// specified to indicate the cursor's position in that dimension. The area
// is specified by 'ylen', 'xlen', and 0 may be specified to indicate everything
// remaining to the right and below, respectively. It is an error for any
// coordinate to be outside the plane. Returns the number of cells set,
// or -1 on failure. Does not update the cursor position.
ncplane_format :: (n: *ncplane, y: s32, x: s32, ylen: u32, xlen: u32, stylemask: u16) -> s32 #foreign libnotcurses;

// Set the given channels throughout the specified region, keeping content and
// channels unchanged. The upper left corner is at 'y', 'x', and -1 may be
// specified to indicate the cursor's position in that dimension. The area
// is specified by 'ylen', 'xlen', and 0 may be specified to indicate everything
// remaining to the right and below, respectively. It is an error for any
// coordinate to be outside the plane. Returns the number of cells set,
// or -1 on failure. Does not update the cursor position.
ncplane_stain :: (n: *ncplane, y: s32, x: s32, ylen: u32, xlen: u32, ul: u64, ur: u64, ll: u64, lr: u64) -> s32 #foreign libnotcurses;

// Merge the entirety of 'src' down onto the ncplane 'dst'. If 'src' does not
// intersect with 'dst', 'dst' will not be changed, but it is not an error.
ncplane_mergedown_simple :: (src: *ncplane, dst: *ncplane) -> s32 #foreign libnotcurses;

// Merge the ncplane 'src' down onto the ncplane 'dst'. This is most rigorously
// defined as "write to 'dst' the frame that would be rendered were the entire
// stack made up only of the specified subregion of 'src' and, below it, the
// subregion of 'dst' having the specified origin. Supply -1 to indicate the
// current cursor position in the relevant dimension. Merging is independent of
// the position of 'src' viz 'dst' on the z-axis. It is an error to define a
// subregion that is not entirely contained within 'src'. It is an error to
// define a target origin such that the projected subregion is not entirely
// contained within 'dst'.  Behavior is undefined if 'src' and 'dst' are
// equivalent. 'dst' is modified, but 'src' remains unchanged. Neither 'src'
// nor 'dst' may have sprixels. Lengths of 0 mean "everything left".
ncplane_mergedown :: (src: *ncplane, dst: *ncplane, begsrcy: s32, begsrcx: s32, leny: u32, lenx: u32, dsty: s32, dstx: s32) -> s32 #foreign libnotcurses;

// Erase every cell in the ncplane (each cell is initialized to the null glyph
// and the default channels/styles). All cells associated with this ncplane are
// invalidated, and must not be used after the call, *excluding* the base cell.
// The cursor is homed. The plane's active attributes are unaffected.
ncplane_erase :: (n: *ncplane) -> void #foreign libnotcurses;

// Erase every cell in the region starting at {ystart, xstart} and having size
// {|ylen|x|xlen|} for non-zero lengths. If ystart and/or xstart are -1, the current
// cursor position along that axis is used; other negative values are an error. A
// negative ylen means to move up from the origin, and a negative xlen means to move
// left from the origin. A positive ylen moves down, and a positive xlen moves right.
// A value of 0 for the length erases everything along that dimension. It is an error
// if the starting coordinate is not in the plane, but the ending coordinate may be
// outside the plane.
//
// For example, on a plane of 20 rows and 10 columns, with the cursor at row 10 and
// column 5, the following would hold:
//
//  (-1, -1, 0, 1): clears the column to the right of the cursor (column 6)
//  (-1, -1, 0, -1): clears the column to the left of the cursor (column 4)
//  (-1, -1, INT_MAX, 0): clears all rows with or below the cursor (rows 10--19)
//  (-1, -1, -INT_MAX, 0): clears all rows with or above the cursor (rows 0--10)
//  (-1, 4, 3, 3): clears from row 5, column 4 through row 7, column 6
//  (-1, 4, -3, -3): clears from row 5, column 4 through row 3, column 2
//  (4, -1, 0, 3): clears columns 5, 6, and 7
//  (-1, -1, 0, 0): clears the plane *if the cursor is in a legal position*
//  (0, 0, 0, 0): clears the plane in all cases
ncplane_erase_region :: (n: *ncplane, ystart: s32, xstart: s32, ylen: s32, xlen: s32) -> s32 #foreign libnotcurses;

// Extract 24 bits of foreground RGB from 'cl', shifted to LSBs.
nccell_fg_rgb :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of background RGB from 'cl', shifted to LSBs.
nccell_bg_rgb :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// Extract 2 bits of foreground alpha from 'cl', shifted to LSBs.
nccell_fg_alpha :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// Extract 2 bits of background alpha from 'cl', shifted to LSBs.
nccell_bg_alpha :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of foreground RGB from 'cl', split into components.
nccell_fg_rgb8 :: (cl: *nccell, r: *u32, g: *u32, b: *u32) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of background RGB from 'cl', split into components.
nccell_bg_rgb8 :: (cl: *nccell, r: *u32, g: *u32, b: *u32) -> u32 #foreign libnotcurses_ffi;

// Set the r, g, and b cell for the foreground component of this 64-bit
// 'cl' variable, and mark it as not using the default color.
nccell_set_fg_rgb8 :: (cl: *nccell, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

// Same, but clipped to [0..255].
nccell_set_fg_rgb8_clipped :: (cl: *nccell, r: s32, g: s32, b: s32) -> void #foreign libnotcurses_ffi;

// Same, but with an assembled 24-bit RGB value.
nccell_set_fg_rgb :: (c: *nccell, channel: u32) -> s32 #foreign libnotcurses_ffi;

// Set the cell's foreground palette index, set the foreground palette index
// bit, set it foreground-opaque, and clear the foreground default color bit.
nccell_set_fg_palindex :: (cl: *nccell, idx: u32) -> s32 #foreign libnotcurses_ffi;

nccell_fg_palindex :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// Set the r, g, and b cell for the background component of this 64-bit
// 'cl' variable, and mark it as not using the default color.
nccell_set_bg_rgb8 :: (cl: *nccell, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

// Same, but clipped to [0..255].
nccell_set_bg_rgb8_clipped :: (cl: *nccell, r: s32, g: s32, b: s32) -> void #foreign libnotcurses_ffi;

// Same, but with an assembled 24-bit RGB value. A value over 0xffffff
// will be rejected, with a non-zero return value.
nccell_set_bg_rgb :: (c: *nccell, channel: u32) -> s32 #foreign libnotcurses_ffi;

// Set the cell's background palette index, set the background palette index
// bit, set it background-opaque, and clear the background default color bit.
nccell_set_bg_palindex :: (cl: *nccell, idx: u32) -> s32 #foreign libnotcurses_ffi;

nccell_bg_palindex :: (cl: *nccell) -> u32 #foreign libnotcurses_ffi;

// Is the foreground using the "default foreground color"?
nccell_fg_default_p :: (cl: *nccell) -> bool #foreign libnotcurses_ffi;

nccell_fg_palindex_p :: (cl: *nccell) -> bool #foreign libnotcurses_ffi;

// Is the background using the "default background color"? The "default
// background color" must generally be used to take advantage of
// terminal-effected transparency.
nccell_bg_default_p :: (cl: *nccell) -> bool #foreign libnotcurses_ffi;

nccell_bg_palindex_p :: (cl: *nccell) -> bool #foreign libnotcurses_ffi;

// Extract the background alpha and coloring bits from a 64-bit channel
// pair as a single 32-bit value.
ncplane_bchannel :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Extract the foreground alpha and coloring bits from a 64-bit channel
// pair as a single 32-bit value.
ncplane_fchannel :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Set the alpha and coloring bits of the plane's current channels from a
// 64-bit pair of channels.
ncplane_set_channels :: (n: *ncplane, channels: u64) -> void #foreign libnotcurses;

// Set the background alpha and coloring bits of the plane's current
// channels from a single 32-bit value.
ncplane_set_bchannel :: (n: *ncplane, channel: u32) -> u64 #foreign libnotcurses;

// Set the foreground alpha and coloring bits of the plane's current
// channels from a single 32-bit value.
ncplane_set_fchannel :: (n: *ncplane, channel: u32) -> u64 #foreign libnotcurses;

// Set the specified style bits for the ncplane 'n', whether they're actively
// supported or not.
ncplane_set_styles :: (n: *ncplane, stylebits: u32) -> void #foreign libnotcurses;

// Add the specified styles to the ncplane's existing spec.
ncplane_on_styles :: (n: *ncplane, stylebits: u32) -> void #foreign libnotcurses;

// Remove the specified styles from the ncplane's existing spec.
ncplane_off_styles :: (n: *ncplane, stylebits: u32) -> void #foreign libnotcurses;

// Extract 24 bits of working foreground RGB from an ncplane, shifted to LSBs.
ncplane_fg_rgb :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of working background RGB from an ncplane, shifted to LSBs.
ncplane_bg_rgb :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Extract 2 bits of foreground alpha from 'struct ncplane', shifted to LSBs.
ncplane_fg_alpha :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Is the plane's foreground using the "default foreground color"?
ncplane_fg_default_p :: (n: *ncplane) -> bool #foreign libnotcurses_ffi;

// Extract 2 bits of background alpha from 'struct ncplane', shifted to LSBs.
ncplane_bg_alpha :: (n: *ncplane) -> u32 #foreign libnotcurses_ffi;

// Is the plane's background using the "default background color"?
ncplane_bg_default_p :: (n: *ncplane) -> bool #foreign libnotcurses_ffi;

// Extract 24 bits of foreground RGB from 'n', split into components.
ncplane_fg_rgb8 :: (n: *ncplane, r: *u32, g: *u32, b: *u32) -> u32 #foreign libnotcurses_ffi;

// Extract 24 bits of background RGB from 'n', split into components.
ncplane_bg_rgb8 :: (n: *ncplane, r: *u32, g: *u32, b: *u32) -> u32 #foreign libnotcurses_ffi;

// Set the current fore/background color using RGB specifications. If the
// terminal does not support directly-specified 3x8b cells (24-bit "TrueColor",
// indicated by the "RGB" terminfo capability), the provided values will be
// interpreted in some lossy fashion. None of r, g, or b may exceed 255.
// "HP-like" terminals require setting foreground and background at the same
// time using "color pairs"; Notcurses will manage color pairs transparently.
ncplane_set_fg_rgb8 :: (n: *ncplane, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses;
ncplane_set_bg_rgb8 :: (n: *ncplane, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses;

// Same, but clipped to [0..255].
ncplane_set_bg_rgb8_clipped :: (n: *ncplane, r: s32, g: s32, b: s32) -> void #foreign libnotcurses;
ncplane_set_fg_rgb8_clipped :: (n: *ncplane, r: s32, g: s32, b: s32) -> void #foreign libnotcurses;

// Same, but with rgb assembled into a channel (i.e. lower 24 bits).
ncplane_set_fg_rgb :: (n: *ncplane, channel: u32) -> s32 #foreign libnotcurses;
ncplane_set_bg_rgb :: (n: *ncplane, channel: u32) -> s32 #foreign libnotcurses;

// Use the default color for the foreground/background.
ncplane_set_fg_default :: (n: *ncplane) -> void #foreign libnotcurses;
ncplane_set_bg_default :: (n: *ncplane) -> void #foreign libnotcurses;

// Set the ncplane's foreground palette index, set the foreground palette index
// bit, set it foreground-opaque, and clear the foreground default color bit.
ncplane_set_fg_palindex :: (n: *ncplane, idx: u32) -> s32 #foreign libnotcurses;
ncplane_set_bg_palindex :: (n: *ncplane, idx: u32) -> s32 #foreign libnotcurses;

// Set the alpha parameters for ncplane 'n'.
ncplane_set_fg_alpha :: (n: *ncplane, alpha: s32) -> s32 #foreign libnotcurses;
ncplane_set_bg_alpha :: (n: *ncplane, alpha: s32) -> s32 #foreign libnotcurses;

// Called for each fade iteration on 'ncp'. If anything but 0 is returned,
// the fading operation ceases immediately, and that value is propagated out.
// The recommended absolute display time target is passed in 'tspec'.
fadecb :: #type (nc: *notcurses, n: *ncplane, unknown0: *timespec, curry: *void) -> s32 #c_call;

// Fade the ncplane out over the provided time, calling 'fader' at each
// iteration. Requires a terminal which supports truecolor, or at least palette
// modification (if the terminal uses a palette, our ability to fade planes is
// limited, and affected by the complexity of the rest of the screen).
ncplane_fadeout :: (n: *ncplane, ts: *timespec, fader: fadecb, curry: *void) -> s32 #foreign libnotcurses;

// Fade the ncplane in over the specified time. Load the ncplane with the
// target cells without rendering, then call this function. When it's done, the
// ncplane will have reached the target levels, starting from zeroes.
ncplane_fadein :: (n: *ncplane, ts: *timespec, fader: fadecb, curry: *void) -> s32 #foreign libnotcurses;

// Rather than the simple ncplane_fade{in/out}(), ncfadectx_setup() can be
// paired with a loop over ncplane_fade{in/out}_iteration() + ncfadectx_free().
ncfadectx_setup :: (n: *ncplane) -> *ncfadectx #foreign libnotcurses;

// Return the number of iterations through which 'nctx' will fade.
ncfadectx_iterations :: (nctx: *ncfadectx) -> s32 #foreign libnotcurses;

// Fade out through 'iter' iterations, where
// 'iter' < 'ncfadectx_iterations(nctx)'.
ncplane_fadeout_iteration :: (n: *ncplane, nctx: *ncfadectx, iter: s32, fader: fadecb, curry: *void) -> s32 #foreign libnotcurses;

// Fade in through 'iter' iterations, where
// 'iter' < 'ncfadectx_iterations(nctx)'.
ncplane_fadein_iteration :: (n: *ncplane, nctx: *ncfadectx, iter: s32, fader: fadecb, curry: *void) -> s32 #foreign libnotcurses;

// Pulse the plane in and out until the callback returns non-zero, relying on
// the callback 'fader' to initiate rendering. 'ts' defines the half-period
// (i.e. the transition from black to full brightness, or back again). Proper
// use involves preparing (but not rendering) an ncplane, then calling
// ncplane_pulse(), which will fade in from black to the specified colors.
ncplane_pulse :: (n: *ncplane, ts: *timespec, fader: fadecb, curry: *void) -> s32 #foreign libnotcurses;

// Release the resources associated with 'nctx'.
ncfadectx_free :: (nctx: *ncfadectx) -> void #foreign libnotcurses;

// load up six cells with the EGCs necessary to draw a box. returns 0 on
// success, -1 on error. on error, any cells this function might
// have loaded before the error are nccell_release()d. There must be at least
// six EGCs in gcluster.
nccells_load_box :: (n: *ncplane, styles: u16, channels: u64, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hl: *nccell, vl: *nccell, gclusters: *u8) -> s32 #foreign libnotcurses_ffi;

nccells_ascii_box :: (n: *ncplane, attr: u16, channels: u64, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hl: *nccell, vl: *nccell) -> s32 #foreign libnotcurses_ffi;

nccells_double_box :: (n: *ncplane, attr: u16, channels: u64, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hl: *nccell, vl: *nccell) -> s32 #foreign libnotcurses_ffi;

nccells_rounded_box :: (n: *ncplane, attr: u16, channels: u64, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hl: *nccell, vl: *nccell) -> s32 #foreign libnotcurses_ffi;

nccells_light_box :: (n: *ncplane, attr: u16, channels: u64, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hl: *nccell, vl: *nccell) -> s32 #foreign libnotcurses_ffi;

nccells_heavy_box :: (n: *ncplane, attr: u16, channels: u64, ul: *nccell, ur: *nccell, ll: *nccell, lr: *nccell, hl: *nccell, vl: *nccell) -> s32 #foreign libnotcurses_ffi;

ncplane_rounded_box :: (n: *ncplane, styles: u16, channels: u64, ystop: u32, xstop: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_perimeter_rounded :: (n: *ncplane, stylemask: u16, channels: u64, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_rounded_box_sized :: (n: *ncplane, styles: u16, channels: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_double_box :: (n: *ncplane, styles: u16, channels: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_ascii_box :: (n: *ncplane, styles: u16, channels: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_perimeter_double :: (n: *ncplane, stylemask: u16, channels: u64, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncplane_double_box_sized :: (n: *ncplane, styles: u16, channels: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

// Open a visual at 'file', extract a codec and parameters, decode the first
// image to memory.
ncvisual_from_file :: (file: *u8) -> *ncvisual #foreign libnotcurses;

// Prepare an ncvisual, and its underlying plane, based off RGBA content in
// memory at 'rgba'. 'rgba' is laid out as 'rows' lines, each of which is
// 'rowstride' bytes in length. Each line has 'cols' 32-bit 8bpc RGBA pixels
// followed by possible padding (there will be 'rowstride' - 'cols' * 4 bytes
// of padding). The total size of 'rgba' is thus ('rows' * 'rowstride') bytes,
// of which ('rows' * 'cols' * 4) bytes are actual non-padding data. It is an
// error if any argument is not positive, if 'rowstride' is not a multiple of
// 4, or if 'rowstride' is less than 'cols' * 4.
ncvisual_from_rgba :: (rgba: *void, rows: s32, rowstride: s32, cols: s32) -> *ncvisual #foreign libnotcurses;

// ncvisual_from_rgba(), but the pixels are 3-byte RGB. A is filled in
// throughout using 'alpha'. It is an error if 'rows', 'rowstride', or 'cols'
// is not positive, if 'rowstride' is not a multiple of 3, or if 'rowstride'
// is less than 'cols' * 3.
ncvisual_from_rgb_packed :: (rgba: *void, rows: s32, rowstride: s32, cols: s32, alpha: s32) -> *ncvisual #foreign libnotcurses;

// ncvisual_from_rgba(), but the pixels are 4-byte RGBx. A is filled in
// throughout using 'alpha'. It is an error if 'rows', 'cols', or 'rowstride'
// are not positive, if 'rowstride' is not a multiple of 4, or if 'rowstride'
// is less than 'cols' * 4.
ncvisual_from_rgb_loose :: (rgba: *void, rows: s32, rowstride: s32, cols: s32, alpha: s32) -> *ncvisual #foreign libnotcurses;

// ncvisual_from_rgba(), but 'bgra' is arranged as BGRA. note that this is a
// byte-oriented layout, despite being bunched in 32-bit pixels; the lowest
// memory address ought be B, and A is reached by adding 3 to that address.
// It is an error if 'rows', 'cols', or 'rowstride' are not positive, if
// 'rowstride' is not a multiple of 4, or if 'rowstride' is less than 'cols' * 4.
ncvisual_from_bgra :: (bgra: *void, rows: s32, rowstride: s32, cols: s32) -> *ncvisual #foreign libnotcurses;

// ncvisual_from_rgba(), but 'data' is 'pstride'-byte palette-indexed pixels,
// arranged in 'rows' lines of 'rowstride' bytes each, composed of 'cols'
// pixels. 'palette' is an array of at least 'palsize' ncchannels.
// It is an error if 'rows', 'cols', 'rowstride', or 'pstride' are not
// positive, if 'rowstride' is not a multiple of 'pstride', or if 'rowstride'
// is less than 'cols' * 'pstride'.
ncvisual_from_palidx :: (data: *void, rows: s32, rowstride: s32, cols: s32, palsize: s32, pstride: s32, palette: *u32) -> *ncvisual #foreign libnotcurses;

// Promote an ncplane 'n' to an ncvisual. The plane may contain only spaces,
// half blocks, and full blocks. The latter will be checked, and any other
// glyph will result in a NULL being returned. This function exists so that
// planes can be subjected to ncvisual transformations. If possible, it's
// better to create the ncvisual from memory using ncvisual_from_rgba().
// Lengths of 0 are interpreted to mean "all available remaining area".
ncvisual_from_plane :: (n: *ncplane, blit: ncblitter_e, begy: s32, begx: s32, leny: u32, lenx: u32) -> *ncvisual #foreign libnotcurses;

// Construct an ncvisual from a nul-terminated Sixel control sequence.
ncvisual_from_sixel :: (s: *u8, leny: u32, lenx: u32) -> *ncvisual #foreign libnotcurses;

ncvisual_options :: struct {
    // if no ncplane is provided, one will be created using the exact size
    // necessary to render the source with perfect fidelity (this might be
    // smaller or larger than the rendering area). if NCVISUAL_OPTION_CHILDPLANE
    // is provided, this must be non-NULL, and will be interpreted as the parent.
    n:          *ncplane;

    // the scaling is ignored if no ncplane is provided (it ought be NCSCALE_NONE
    // in this case). otherwise, the source is stretched/scaled relative to the
    // provided ncplane.
    scaling:    ncscale_e;

    // if an ncplane is provided, y and x specify where the visual will be
    // rendered on that plane. otherwise, they specify where the created ncplane
    // will be placed relative to the standard plane's origin. x is an ncalign_e
    // value if NCVISUAL_OPTION_HORALIGNED is provided. y is an ncalign_e if
    // NCVISUAL_OPTION_VERALIGNED is provided.
    y:          s32;
    // if an ncplane is provided, y and x specify where the visual will be
    // rendered on that plane. otherwise, they specify where the created ncplane
    // will be placed relative to the standard plane's origin. x is an ncalign_e
    // value if NCVISUAL_OPTION_HORALIGNED is provided. y is an ncalign_e if
    // NCVISUAL_OPTION_VERALIGNED is provided.
    x:          s32;

    begy:       u32; // origin of rendered region in pixels
    begx:       u32; // origin of rendered region in pixels
    leny:       u32; // size of rendered region in pixels
    lenx:       u32; // size of rendered region in pixels

    blitter:    ncblitter_e; // glyph set to use (maps input to output cells)
    flags:      u64; // bitmask over NCVISUAL_OPTION_*
    transcolor: u32; // treat this color as transparent under NCVISUAL_OPTION_ADDALPHA

    // pixel offsets within the cell. if NCBLIT_PIXEL is used, the bitmap will
    // be drawn offset from the upper-left cell's origin by these amounts. it is
    // an error if either number exceeds the cell-pixel geometry in its
    // dimension. if NCBLIT_PIXEL is not used, these fields are ignored.
    // this functionality can be used for smooth bitmap movement.
    pxoffy:     u32;
    // pixel offsets within the cell. if NCBLIT_PIXEL is used, the bitmap will
    // be drawn offset from the upper-left cell's origin by these amounts. it is
    // an error if either number exceeds the cell-pixel geometry in its
    // dimension. if NCBLIT_PIXEL is not used, these fields are ignored.
    // this functionality can be used for smooth bitmap movement.
    pxoffx:     u32;
}

// describes all geometries of an ncvisual: those which are inherent, and those
// dependent upon a given rendering regime. pixy and pixx are the true internal
// pixel geometry, taken directly from the load (and updated by
// ncvisual_resize()). cdimy/cdimx are the cell-pixel geometry *at the time
// of this call* (it can change with a font change, in which case all values
// other than pixy/pixx are invalidated). rpixy/rpixx are the pixel geometry as
// handed to the blitter, following any scaling. scaley/scalex are the number
// of input pixels drawn to a single cell; when using NCBLIT_PIXEL, they are
// equivalent to cdimy/cdimx. rcelly/rcellx are the cell geometry as written by
// the blitter, following any padding (there is padding whenever rpix{y, x} is
// not evenly divided by scale{y, x}, and also sometimes for Sixel).
// maxpixely/maxpixelx are defined only when NCBLIT_PIXEL is used, and specify
// the largest bitmap that the terminal is willing to accept. blitter is the
// blitter which will be used, a function of the requested blitter and the
// blitters actually supported by this environment. if no ncvisual was
// supplied, only cdimy/cdimx are filled in.
ncvgeom :: struct {
    pixy:      u32; // true pixel geometry of ncvisual data
    pixx:      u32; // true pixel geometry of ncvisual data
    cdimy:     u32; // terminal cell geometry when this was calculated
    cdimx:     u32; // terminal cell geometry when this was calculated
    rpixy:     u32; // rendered pixel geometry (per visual_options)
    rpixx:     u32; // rendered pixel geometry (per visual_options)
    rcelly:    u32; // rendered cell geometry (per visual_options)
    rcellx:    u32; // rendered cell geometry (per visual_options)
    scaley:    u32; // source pixels per filled cell
    scalex:    u32; // source pixels per filled cell
    begy:      u32; // upper-left corner of used region
    begx:      u32; // upper-left corner of used region
    leny:      u32; // geometry of used region
    lenx:      u32; // geometry of used region
    maxpixely: u32; // only defined for NCBLIT_PIXEL
    maxpixelx: u32; // only defined for NCBLIT_PIXEL
    blitter:   ncblitter_e; // blitter that will be used
}

// all-purpose ncvisual geometry solver. one or both of 'nc' and 'n' must be
// non-NULL. if 'nc' is NULL, only pixy/pixx will be filled in, with the true
// pixel geometry of 'n'. if 'n' is NULL, only cdimy/cdimx, blitter,
// scaley/scalex, and maxpixely/maxpixelx are filled in. cdimy/cdimx and
// maxpixely/maxpixelx are only ever filled in if we know them.
ncvisual_geom :: (nc: *notcurses, n: *ncvisual, vopts: *ncvisual_options, geom: *ncvgeom) -> s32 #foreign libnotcurses;

// Destroy an ncvisual. Rendered elements will not be disrupted, but the visual
// can be neither decoded nor rendered any further.
ncvisual_destroy :: (ncv: *ncvisual) -> void #foreign libnotcurses;

// extract the next frame from an ncvisual. returns 1 on end of file, 0 on
// success, and -1 on failure.
ncvisual_decode :: (nc: *ncvisual) -> s32 #foreign libnotcurses;

// decode the next frame ala ncvisual_decode(), but if we have reached the end,
// rewind to the first frame of the ncvisual. a subsequent 'ncvisual_blit()'
// will render the first frame, as if the ncvisual had been closed and reopened.
// the return values remain the same as those of ncvisual_decode().
ncvisual_decode_loop :: (nc: *ncvisual) -> s32 #foreign libnotcurses;

// Rotate the visual 'rads' radians. Only M_PI/2 and -M_PI/2 are supported at
// the moment, but this might change in the future.
ncvisual_rotate :: (n: *ncvisual, rads: float64) -> s32 #foreign libnotcurses;

// Scale the visual to 'rows' X 'columns' pixels, using the best scheme
// available. This is a lossy transformation, unless the size is unchanged.
ncvisual_resize :: (n: *ncvisual, rows: s32, cols: s32) -> s32 #foreign libnotcurses;

// Scale the visual to 'rows' X 'columns' pixels, using non-interpolative
// (naive) scaling. No new colors will be introduced as a result.
ncvisual_resize_noninterpolative :: (n: *ncvisual, rows: s32, cols: s32) -> s32 #foreign libnotcurses;

// Polyfill at the specified location within the ncvisual 'n', using 'rgba'.
ncvisual_polyfill_yx :: (n: *ncvisual, y: u32, x: u32, rgba: u32) -> s32 #foreign libnotcurses;

// Get the specified pixel from the specified ncvisual.
ncvisual_at_yx :: (n: *ncvisual, y: u32, x: u32, pixel: *u32) -> s32 #foreign libnotcurses;

// Set the specified pixel in the specified ncvisual.
ncvisual_set_yx :: (n: *ncvisual, y: u32, x: u32, pixel: u32) -> s32 #foreign libnotcurses;

// Render the decoded frame according to the provided options (which may be
// NULL). The plane used for rendering depends on vopts->n and vopts->flags.
// If NCVISUAL_OPTION_CHILDPLANE is set, vopts->n must not be NULL, and the
// plane will always be created as a child of vopts->n. If this flag is not
// set, and vopts->n is NULL, a new plane is created as root of a new pile.
// If the flag is not set and vopts->n is not NULL, we render to vopts->n.
// A subregion of the visual can be rendered using 'begx', 'begy', 'lenx', and
// 'leny'. Negative values for any of these are an error. It is an error to
// specify any region beyond the boundaries of the frame. Returns the (possibly
// newly-created) plane to which we drew. Pixels may not be blitted to the
// standard plane.
ncvisual_blit :: (nc: *notcurses, ncv: *ncvisual, vopts: *ncvisual_options) -> *ncplane #foreign libnotcurses;

// Create a new plane as prescribed in opts, either as a child of 'vopts->n',
// or the root of a new pile if 'vopts->n' is NULL (or 'vopts' itself is NULL).
// Blit 'ncv' to the created plane according to 'vopts'. If 'vopts->n' is
// non-NULL, NCVISUAL_OPTION_CHILDPLANE must be supplied.
ncvisualplane_create :: (nc: *notcurses, opts: *ncplane_options, ncv: *ncvisual, vopts: *ncvisual_options) -> *ncplane #foreign libnotcurses_ffi;

// If a subtitle ought be displayed at this time, return a new plane (bound
// to 'parent' containing the subtitle, which might be text or graphics
// (depending on the input format).
ncvisual_subtitle_plane :: (parent: *ncplane, ncv: *ncvisual) -> *ncplane #foreign libnotcurses;

// Get the default *media* (not plot) blitter for this environment when using
// the specified scaling method. Currently, this means:
//  - if lacking UTF-8, NCBLIT_1x1
//  - otherwise, if not NCSCALE_STRETCH, NCBLIT_2x1
//  - otherwise, if octants are known to be good, NCBLIT_4x2
//  - otherwise, if sextants are not known to be good, NCBLIT_2x2
//  - otherwise NCBLIT_3x2
// NCBLIT_2x2 and NCBLIT_3x2 both distort the original aspect ratio, thus
// NCBLIT_2x1 is used outside of NCSCALE_STRETCH.
ncvisual_media_defblitter :: (nc: *notcurses, scale: ncscale_e) -> ncblitter_e #foreign libnotcurses;

// Called for each frame rendered from 'ncv'. If anything but 0 is returned,
// the streaming operation ceases immediately, and that value is propagated out.
// The recommended absolute display time target is passed in 'tspec'.
ncstreamcb :: #type (unknown0: *ncvisual, unknown1: *ncvisual_options, unknown2: *timespec, unknown3: *void) -> s32 #c_call;

// Shut up and display my frames! Provide as an argument to ncvisual_stream().
// If you'd like subtitles to be decoded, provide an ncplane as the curry. If the
// curry is NULL, subtitles will not be displayed.
ncvisual_simple_streamer :: (ncv: *ncvisual, vopts: *ncvisual_options, tspec: *timespec, curry: *void) -> s32 #foreign libnotcurses;

// Stream the entirety of the media, according to its own timing. Blocking,
// obviously. streamer may be NULL; it is otherwise called for each frame, and
// its return value handled as outlined for streamcb. If streamer() returns
// non-zero, the stream is aborted, and that value is returned. By convention,
// return a positive number to indicate intentional abort from within
// streamer(). 'timescale' allows the frame duration time to be scaled. For a
// visual naturally running at 30FPS, a 'timescale' of 0.1 will result in
// 300FPS, and a 'timescale' of 10 will result in 3FPS. It is an error to
// supply 'timescale' less than or equal to 0.
ncvisual_stream :: (nc: *notcurses, ncv: *ncvisual, timescale: float, streamer: ncstreamcb, vopts: *ncvisual_options, curry: *void) -> s32 #foreign libnotcurses;

// Blit a flat array 'data' of RGBA 32-bit values to the ncplane 'vopts->n',
// which mustn't be NULL. the blit begins at 'vopts->y' and 'vopts->x' relative
// to the specified plane. Each source row ought occupy 'linesize' bytes (this
// might be greater than 'vopts->lenx' * 4 due to padding or partial blits). A
// subregion of the input can be specified with the 'begy'x'begx' and
// 'leny'x'lenx' fields from 'vopts'. Returns the number of pixels blitted, or
// -1 on error.
ncblit_rgba :: (data: *void, linesize: s32, vopts: *ncvisual_options) -> s32 #foreign libnotcurses;

// Same as ncblit_rgba(), but for BGRx.
ncblit_bgrx :: (data: *void, linesize: s32, vopts: *ncvisual_options) -> s32 #foreign libnotcurses;

// Supply an alpha value [0..255] to be applied throughout.
ncblit_rgb_packed :: (data: *void, linesize: s32, vopts: *ncvisual_options, alpha: s32) -> s32 #foreign libnotcurses;

// Supply an alpha value [0..255] to be applied throughout. linesize must be
// a multiple of 4 for this RGBx data.
ncblit_rgb_loose :: (data: *void, linesize: s32, vopts: *ncvisual_options, alpha: s32) -> s32 #foreign libnotcurses;

// Extract the 8-bit alpha component from a pixel
ncpixel_a :: (pixel: u32) -> u32 #foreign libnotcurses_ffi;

// Extract the 8-bit red component from an ABGR pixel
ncpixel_r :: (pixel: u32) -> u32 #foreign libnotcurses_ffi;

// Extract the 8-bit green component from an ABGR pixel
ncpixel_g :: (pixel: u32) -> u32 #foreign libnotcurses_ffi;

// Extract the 8-bit blue component from an ABGR pixel
ncpixel_b :: (pixel: u32) -> u32 #foreign libnotcurses_ffi;

// Set the 8-bit alpha component of an ABGR pixel
ncpixel_set_a :: (pixel: *u32, a: u32) -> s32 #foreign libnotcurses_ffi;

// Set the 8-bit red component of an ABGR pixel
ncpixel_set_r :: (pixel: *u32, r: u32) -> s32 #foreign libnotcurses_ffi;

// Set the 8-bit green component of an ABGR pixel
ncpixel_set_g :: (pixel: *u32, g: u32) -> s32 #foreign libnotcurses_ffi;

// Set the 8-bit blue component of an ABGR pixel
ncpixel_set_b :: (pixel: *u32, b: u32) -> s32 #foreign libnotcurses_ffi;

// Construct a libav-compatible ABGR pixel, clipping at [0, 255).
ncpixel :: (r: u32, g: u32, b: u32) -> u32 #foreign libnotcurses_ffi;

// set the RGB values of an RGB pixel
ncpixel_set_rgb8 :: (pixel: *u32, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

ncreel_options :: struct {
    bordermask:  u32; // bitfield; 1s will not be drawn (see bordermaskbits)
    borderchan:  u64; // attributes used for ncreel border
    tabletmask:  u32; // bitfield; same as bordermask but for tablet borders
    tabletchan:  u64; // tablet border styling channel
    focusedchan: u64; // focused tablet border styling channel
    flags:       u64; // bitfield over NCREEL_OPTION_*
}

// Take over the ncplane 'nc' and use it to draw a reel according to 'popts'.
// The plane will be destroyed by ncreel_destroy(); this transfers ownership.
ncreel_create :: (n: *ncplane, popts: *ncreel_options) -> *ncreel #foreign libnotcurses;

// Returns the ncplane on which this ncreel lives.
ncreel_plane :: (nr: *ncreel) -> *ncplane #foreign libnotcurses;

// Tablet draw callback, provided a tablet (from which the ncplane and userptr
// may be extracted), and a bool indicating whether output ought be drawn from
// the top (true) or bottom (false). Returns non-negative count of output lines,
// which must be less than or equal to ncplane_dim_y(nctablet_plane(t)).
tabletcb :: #type (t: *nctablet, drawfromtop: bool) -> s32 #c_call;

// Add a new nctablet to the provided ncreel 'nr', having the callback object
// 'opaque'. Neither, either, or both of 'after' and 'before' may be specified.
// If neither is specified, the new tablet can be added anywhere on the reel.
// If one or the other is specified, the tablet will be added before or after
// the specified tablet. If both are specified, the tablet will be added to the
// resulting location, assuming it is valid (after->next == before->prev); if
// it is not valid, or there is any other error, NULL will be returned.
ncreel_add :: (nr: *ncreel, after: *nctablet, before: *nctablet, cb: tabletcb, opaque: *void) -> *nctablet #foreign libnotcurses;

// Return the number of nctablets in the ncreel 'nr'.
ncreel_tabletcount :: (nr: *ncreel) -> s32 #foreign libnotcurses;

// Delete the tablet specified by t from the ncreel 'nr'. Returns -1 if the
// tablet cannot be found.
ncreel_del :: (nr: *ncreel, t: *nctablet) -> s32 #foreign libnotcurses;

// Redraw the ncreel 'nr' in its entirety. The reel will be cleared, and
// tablets will be lain out, using the focused tablet as a fulcrum. Tablet
// drawing callbacks will be invoked for each visible tablet.
ncreel_redraw :: (nr: *ncreel) -> s32 #foreign libnotcurses;

// Offer input 'ni' to the ncreel 'nr'. If it's relevant, this function returns
// true, and the input ought not be processed further. If it's irrelevant to
// the reel, false is returned. Relevant inputs include:
//  * a mouse click on a tablet (focuses tablet)
//  * a mouse scrollwheel event (rolls reel)
//  * up, down, pgup, or pgdown (navigates among items)
ncreel_offer_input :: (nr: *ncreel, ni: *ncinput) -> bool #foreign libnotcurses;

// Return the focused tablet, if any tablets are present. This is not a copy;
// be careful to use it only for the duration of a critical section.
ncreel_focused :: (nr: *ncreel) -> *nctablet #foreign libnotcurses;

// Change focus to the next tablet, if one exists
ncreel_next :: (nr: *ncreel) -> *nctablet #foreign libnotcurses;

// Change focus to the previous tablet, if one exists
ncreel_prev :: (nr: *ncreel) -> *nctablet #foreign libnotcurses;

// Destroy an ncreel allocated with ncreel_create().
ncreel_destroy :: (nr: *ncreel) -> void #foreign libnotcurses;

// Returns a pointer to a user pointer associated with this nctablet.
nctablet_userptr :: (t: *nctablet) -> *void #foreign libnotcurses;

// Access the ncplane associated with nctablet 't', if one exists.
nctablet_plane :: (t: *nctablet) -> *ncplane #foreign libnotcurses;

// snprintf(3) is used internally, with 's' as its size bound. If the output
// requires more size than is available, NULL will be returned.
//
// Floating-point is never used, because an IEEE758 double can only losslessly
// represent integers through 2^53-1.
//
// 2^64-1 is 18446744073709551615, 18.45E(xa). KMGTPEZY thus suffice to handle
// an 89-bit uintmax_t. Beyond Z(etta) and Y(otta) lie lands unspecified by SI.
// 2^-63 is 0.000000000000000000108, 1.08a(tto).
// val: value to print
// s: maximum output size; see snprintf(3)
// decimal: scaling. '1' if none has taken place.
// buf: buffer in which string will be generated
// omitdec: inhibit printing of all-0 decimal portions
// mult: base of suffix system (almost always 1000 or 1024)
// uprefix: character to print following suffix ('i' for kibibytes basically).
//   only printed if suffix is actually printed (input >= mult).
//
// You are encouraged to consult notcurses_metric(3).
ncnmetric :: (val: uintmax_t, s: u64, decimal: uintmax_t, buf: *u8, omitdec: s32, mult: uintmax_t, uprefix: s32) -> *u8 #foreign libnotcurses;

// Mega, kilo, gigafoo. Use PREFIXSTRLEN + 1 and PREFIXCOLUMNS.
ncqprefix :: (val: uintmax_t, decimal: uintmax_t, buf: *u8, omitdec: s32) -> *u8 #foreign libnotcurses_ffi;

// Mibi, kebi, gibibytes sans 'i' suffix. Use IPREFIXSTRLEN + 1.
nciprefix :: (val: uintmax_t, decimal: uintmax_t, buf: *u8, omitdec: s32) -> *u8 #foreign libnotcurses_ffi;

// Mibi, kebi, gibibytes. Use BPREFIXSTRLEN + 1 and BPREFIXCOLUMNS.
ncbprefix :: (val: uintmax_t, decimal: uintmax_t, buf: *u8, omitdec: s32) -> *u8 #foreign libnotcurses_ffi;

// Get the default foreground color, if it is known. Returns -1 on error
// (unknown foreground). On success, returns 0, writing the RGB value to
// 'fg' (if non-NULL)
notcurses_default_foreground :: (nc: *notcurses, fg: *u32) -> s32 #foreign libnotcurses;

// Get the default background color, if it is known. Returns -1 on error
// (unknown background). On success, returns 0, writing the RGB value to
// 'bg' (if non-NULL) and setting 'bgtrans' high iff the background color
// is treated as transparent.
notcurses_default_background :: (nc: *notcurses, bg: *u32) -> s32 #foreign libnotcurses;

// Enable or disable the terminal's cursor, if supported, placing it at
// 'y', 'x'. Immediate effect (no need for a call to notcurses_render()).
// It is an error if 'y', 'x' lies outside the standard plane. Can be
// called while already visible to move the cursor.
notcurses_cursor_enable :: (nc: *notcurses, y: s32, x: s32) -> s32 #foreign libnotcurses;

// Disable the hardware cursor. It is an error to call this while the
// cursor is already disabled.
notcurses_cursor_disable :: (nc: *notcurses) -> s32 #foreign libnotcurses;

// Get the current location of the terminal's cursor, whether visible or not.
notcurses_cursor_yx :: (nc: *notcurses, y: *s32, x: *s32) -> s32 #foreign libnotcurses;

// Convert the plane's content to greyscale.
ncplane_greyscale :: (n: *ncplane) -> void #foreign libnotcurses;

// selection widget -- an ncplane with a title header and a body section. the
// body section supports infinite scrolling up and down.
//
// At all times, exactly one item is selected.
ncselector_item :: struct {
    option: *u8;
    desc:   *u8;
}

ncselector_options :: struct {
    title:         *u8; // title may be NULL, inhibiting riser, saving two rows.
    secondary:     *u8; // secondary may be NULL
    footer:        *u8; // footer may be NULL
    items:         *ncselector_item; // initial items and descriptions

    // default item (selected at start), must be < itemcount unless itemcount is
    // 0, in which case 'defidx' must also be 0
    defidx:        u32;

    // maximum number of options to display at once, 0 to use all available space
    maxdisplay:    u32;

    opchannels:    u64; // option channels
    descchannels:  u64; // description channels
    titlechannels: u64; // title channels
    footchannels:  u64; // secondary and footer channels
    boxchannels:   u64; // border channels
    flags:         u64; // bitfield of NCSELECTOR_OPTION_*, currently unused
}

ncselector_create :: (n: *ncplane, opts: *ncselector_options) -> *ncselector #foreign libnotcurses;

// Dynamically add or delete items. It is usually sufficient to supply a static
// list of items via ncselector_options->items.
ncselector_additem :: (n: *ncselector, item: *ncselector_item) -> s32 #foreign libnotcurses;
ncselector_delitem :: (n: *ncselector, item: *u8) -> s32 #foreign libnotcurses;

// Return reference to the selected option, or NULL if there are no items.
ncselector_selected :: (n: *ncselector) -> *u8 #foreign libnotcurses;

// Return a reference to the ncselector's underlying ncplane.
ncselector_plane :: (n: *ncselector) -> *ncplane #foreign libnotcurses;

// Move up or down in the list. A reference to the newly-selected item is
// returned, or NULL if there are no items in the list.
ncselector_previtem :: (n: *ncselector) -> *u8 #foreign libnotcurses;

ncselector_nextitem :: (n: *ncselector) -> *u8 #foreign libnotcurses;

// Offer the input to the ncselector. If it's relevant, this function returns
// true, and the input ought not be processed further. If it's irrelevant to
// the selector, false is returned. Relevant inputs include:
//  * a mouse click on an item
//  * a mouse scrollwheel event
//  * a mouse click on the scrolling arrows
//  * up, down, pgup, or pgdown on an unrolled menu (navigates among items)
ncselector_offer_input :: (n: *ncselector, nc: *ncinput) -> bool #foreign libnotcurses;

// Destroy the ncselector.
ncselector_destroy :: (n: *ncselector, item: **u8) -> void #foreign libnotcurses;

ncmselector_item :: struct {
    option:   *u8;
    desc:     *u8;
    selected: bool;
}

// multiselection widget -- a selector supporting multiple selections.
//
// Unlike the selector widget, zero to all of the items can be selected, but
// also the widget does not support adding or removing items at runtime.
ncmultiselector_options :: struct {
    title:         *u8; // title may be NULL, inhibiting riser, saving two rows.
    secondary:     *u8; // secondary may be NULL
    footer:        *u8; // footer may be NULL
    items:         *ncmselector_item; // initial items, descriptions, and statuses

    // maximum number of options to display at once, 0 to use all available space
    maxdisplay:    u32;

    opchannels:    u64; // option channels
    descchannels:  u64; // description channels
    titlechannels: u64; // title channels
    footchannels:  u64; // secondary and footer channels
    boxchannels:   u64; // border channels
    flags:         u64; // bitfield of NCMULTISELECTOR_OPTION_*, currently unused
}

ncmultiselector_create :: (n: *ncplane, opts: *ncmultiselector_options) -> *ncmultiselector #foreign libnotcurses;

// Return selected vector. An array of bools must be provided, along with its
// length. If that length doesn't match the itemcount, it is an error.
ncmultiselector_selected :: (n: *ncmultiselector, selected: *bool, count: u32) -> s32 #foreign libnotcurses;

// Return a reference to the ncmultiselector's underlying ncplane.
ncmultiselector_plane :: (n: *ncmultiselector) -> *ncplane #foreign libnotcurses;

// Offer the input to the ncmultiselector. If it's relevant, this function
// returns true, and the input ought not be processed further. If it's
// irrelevant to the multiselector, false is returned. Relevant inputs include:
//  * a mouse click on an item
//  * a mouse scrollwheel event
//  * a mouse click on the scrolling arrows
//  * up, down, pgup, or pgdown on an unrolled menu (navigates among items)
ncmultiselector_offer_input :: (n: *ncmultiselector, nc: *ncinput) -> bool #foreign libnotcurses;

// Destroy the ncmultiselector.
ncmultiselector_destroy :: (n: *ncmultiselector) -> void #foreign libnotcurses;

// each item has a curry, and zero or more subitems.
nctree_item :: struct {
    curry:    *void;
    subs:     *nctree_item;
    subcount: u32;
}

nctree_options :: struct {
    items:      *nctree_item; // top-level nctree_item array
    count:      u32; // size of |items|
    nctreecb:   #type (unknown0: *ncplane, unknown1: *void, unknown2: s32) -> s32 #c_call; // item callback function
    indentcols: s32; // columns to indent per level of hierarchy
    flags:      u64; // bitfield of NCTREE_OPTION_*
}

nctree :: struct {}
// |opts| may *not* be NULL, since it is necessary to define a callback
// function.
nctree_create :: (n: *ncplane, opts: *nctree_options) -> *nctree #foreign libnotcurses;

// Returns the ncplane on which this nctree lives.
nctree_plane :: (n: *nctree) -> *ncplane #foreign libnotcurses;

// Redraw the nctree 'n' in its entirety. The tree will be cleared, and items
// will be lain out, using the focused item as a fulcrum. Item-drawing
// callbacks will be invoked for each visible item.
nctree_redraw :: (n: *nctree) -> s32 #foreign libnotcurses;

// Offer input 'ni' to the nctree 'n'. If it's relevant, this function returns
// true, and the input ought not be processed further. If it's irrelevant to
// the tree, false is returned. Relevant inputs include:
//  * a mouse click on an item (focuses item)
//  * a mouse scrollwheel event (srolls tree)
//  * up, down, pgup, or pgdown (navigates among items)
nctree_offer_input :: (n: *nctree, ni: *ncinput) -> bool #foreign libnotcurses;

// Return the focused item, if any items are present. This is not a copy;
// be careful to use it only for the duration of a critical section.
nctree_focused :: (n: *nctree) -> *void #foreign libnotcurses;

// Change focus to the next item.
nctree_next :: (n: *nctree) -> *void #foreign libnotcurses;

// Change focus to the previous item.
nctree_prev :: (n: *nctree) -> *void #foreign libnotcurses;

// Go to the item specified by the array |spec| (a spec is a series of unsigned
// values, each identifying a subelement in the hierarchy thus far, terminated
// by UINT_MAX). If the spec is invalid, NULL is returned, and the depth of the
// first invalid spec is written to *|failspec|. Otherwise, the true depth is
// written to *|failspec|, and the curry is returned (|failspec| is necessary
// because the curry could itself be NULL).
nctree_goto :: (n: *nctree, spec: *u32, failspec: *s32) -> *void #foreign libnotcurses;

// Insert |add| into the nctree |n| at |spec|. The path up to the last element
// must already exist. If an item already exists at the path, it will be moved
// to make room for |add|.
nctree_add :: (n: *nctree, spec: *u32, add: *nctree_item) -> s32 #foreign libnotcurses;

// Delete the item at |spec|, including any subitems.
nctree_del :: (n: *nctree, spec: *u32) -> s32 #foreign libnotcurses;

// Destroy the nctree.
nctree_destroy :: (n: *nctree) -> void #foreign libnotcurses;

// Menus. Horizontal menu bars are supported, on the top and/or bottom rows.
// If the menu bar is longer than the screen, it will be only partially
// visible. Menus may be either visible or invisible by default. In the event of
// a plane resize, menus will be automatically moved/resized. Elements can be
// dynamically enabled or disabled at all levels (menu, section, and item),
ncmenu_item :: struct {
    desc:     *u8; // utf-8 menu item, NULL for horizontal separator
    shortcut: ncinput; // shortcut, all should be distinct
}

ncmenu_section :: struct {
    name:      *u8; // utf-8 c string
    itemcount: s32;
    items:     *ncmenu_item;
    shortcut:  ncinput; // shortcut, will be underlined if present in name
}

ncmenu_options :: struct {
    sections:        *ncmenu_section; // array of 'sectioncount' menu_sections
    sectioncount:    s32; // must be positive
    headerchannels:  u64; // styling for header
    sectionchannels: u64; // styling for sections
    flags:           u64; // flag word of NCMENU_OPTION_*
}

ncmenu :: struct {}
// Create a menu with the specified options, bound to the specified plane.
ncmenu_create :: (n: *ncplane, opts: *ncmenu_options) -> *ncmenu #foreign libnotcurses;

// Unroll the specified menu section, making the menu visible if it was
// invisible, and rolling up any menu section that is already unrolled.
ncmenu_unroll :: (n: *ncmenu, sectionidx: s32) -> s32 #foreign libnotcurses;

// Roll up any unrolled menu section, and hide the menu if using hiding.
ncmenu_rollup :: (n: *ncmenu) -> s32 #foreign libnotcurses;

// Unroll the previous/next section (relative to current unrolled). If no
// section is unrolled, the first section will be unrolled.
ncmenu_nextsection :: (n: *ncmenu) -> s32 #foreign libnotcurses;
ncmenu_prevsection :: (n: *ncmenu) -> s32 #foreign libnotcurses;

// Move to the previous/next item within the currently unrolled section. If no
// section is unrolled, the first section will be unrolled.
ncmenu_nextitem :: (n: *ncmenu) -> s32 #foreign libnotcurses;
ncmenu_previtem :: (n: *ncmenu) -> s32 #foreign libnotcurses;

// Disable or enable a menu item. Returns 0 if the item was found.
ncmenu_item_set_status :: (n: *ncmenu, section: *u8, item: *u8, enabled: bool) -> s32 #foreign libnotcurses;

// Return the selected item description, or NULL if no section is unrolled. If
// 'ni' is not NULL, and the selected item has a shortcut, 'ni' will be filled
// in with that shortcut--this can allow faster matching.
ncmenu_selected :: (n: *ncmenu, ni: *ncinput) -> *u8 #foreign libnotcurses;

// Return the item description corresponding to the mouse click 'click'. The
// item must be on an actively unrolled section, and the click must be in the
// area of a valid item. If 'ni' is not NULL, and the selected item has a
// shortcut, 'ni' will be filled in with the shortcut.
ncmenu_mouse_selected :: (n: *ncmenu, click: *ncinput, ni: *ncinput) -> *u8 #foreign libnotcurses;

// Return the ncplane backing this ncmenu.
ncmenu_plane :: (n: *ncmenu) -> *ncplane #foreign libnotcurses;

// Offer the input to the ncmenu. If it's relevant, this function returns true,
// and the input ought not be processed further. If it's irrelevant to the
// menu, false is returned. Relevant inputs include:
//  * mouse movement over a hidden menu
//  * a mouse click on a menu section (the section is unrolled)
//  * a mouse click outside of an unrolled menu (the menu is rolled up)
//  * left or right on an unrolled menu (navigates among sections)
//  * up or down on an unrolled menu (navigates among items)
//  * escape on an unrolled menu (the menu is rolled up)
ncmenu_offer_input :: (n: *ncmenu, nc: *ncinput) -> bool #foreign libnotcurses;

// Destroy a menu created with ncmenu_create().
ncmenu_destroy :: (n: *ncmenu) -> void #foreign libnotcurses;

ncprogbar_options :: struct {
    ulchannel: u32; // upper-left channel. in the context of a progress bar,
    urchannel: u32; // "up" is the direction we are progressing towards, and
    blchannel: u32; // "bottom" is the direction of origin. for monochromatic
    brchannel: u32; // bar, all four channels ought be the same.
    flags:     u64;
}

// Takes ownership of the ncplane 'n', which will be destroyed by
// ncprogbar_destroy(). The progress bar is initially at 0%.
ncprogbar_create :: (n: *ncplane, opts: *ncprogbar_options) -> *ncprogbar #foreign libnotcurses;

// Return a reference to the ncprogbar's underlying ncplane.
ncprogbar_plane :: (n: *ncprogbar) -> *ncplane #foreign libnotcurses;

// Set the progress bar's completion, a double 0 <= 'p' <= 1.
ncprogbar_set_progress :: (n: *ncprogbar, p: float64) -> s32 #foreign libnotcurses;

// Get the progress bar's completion, a double on [0, 1].
ncprogbar_progress :: (n: *ncprogbar) -> float64 #foreign libnotcurses;

// Destroy the progress bar and its underlying ncplane.
ncprogbar_destroy :: (n: *ncprogbar) -> void #foreign libnotcurses;

nctabbed_options :: struct {
    selchan:   u64; // channel for the selected tab header
    hdrchan:   u64; // channel for unselected tab headers
    sepchan:   u64; // channel for the tab separator
    separator: *u8; // separator string (copied by nctabbed_create())
    flags:     u64; // bitmask of NCTABBED_OPTION_*
}

// Tab content drawing callback. Takes the tab it was associated to, the ncplane
// on which tab content is to be drawn, and the user pointer of the tab.
// It is called during nctabbed_redraw().
tabcb :: #type (t: *nctab, ncp: *ncplane, curry: *void) -> void #c_call;

// Creates a new nctabbed widget, associated with the given ncplane 'n', and with
// additional options given in 'opts'. When 'opts' is NULL, it acts as if it were
// called with an all-zero opts. The widget takes ownership of 'n', and destroys
// it when the widget is destroyed. Returns the newly created widget. Returns
// NULL on failure, also destroying 'n'.
nctabbed_create :: (n: *ncplane, opts: *nctabbed_options) -> *nctabbed #foreign libnotcurses;

// Destroy an nctabbed widget. All memory belonging to 'nt' is deallocated,
// including all tabs and their names. The plane associated with 'nt' is also
// destroyed. Calling this with NULL does nothing.
nctabbed_destroy :: (nt: *nctabbed) -> void #foreign libnotcurses;

// Redraw the widget. This calls the tab callback of the currently selected tab
// to draw tab contents, and draws tab headers. The tab content plane is not
// modified by this function, apart from resizing the plane is necessary.
nctabbed_redraw :: (nt: *nctabbed) -> void #foreign libnotcurses;

// Make sure the tab header of the currently selected tab is at least partially
// visible. (by rotating tabs until at least one column is displayed)
// Does nothing if there are no tabs.
nctabbed_ensure_selected_header_visible :: (nt: *nctabbed) -> void #foreign libnotcurses;

// Returns the currently selected tab, or NULL if there are no tabs.
nctabbed_selected :: (nt: *nctabbed) -> *nctab #foreign libnotcurses;

// Returns the leftmost tab, or NULL if there are no tabs.
nctabbed_leftmost :: (nt: *nctabbed) -> *nctab #foreign libnotcurses;

// Returns the number of tabs in the widget.
nctabbed_tabcount :: (nt: *nctabbed) -> s32 #foreign libnotcurses;

// Returns the plane associated to 'nt'.
nctabbed_plane :: (nt: *nctabbed) -> *ncplane #foreign libnotcurses;

// Returns the tab content plane.
nctabbed_content_plane :: (nt: *nctabbed) -> *ncplane #foreign libnotcurses;

// Returns the tab callback.
nctab_cb :: (t: *nctab) -> tabcb #foreign libnotcurses;

// Returns the tab name. This is not a copy and it should not be stored.
nctab_name :: (t: *nctab) -> *u8 #foreign libnotcurses;

// Returns the width (in columns) of the tab's name.
nctab_name_width :: (t: *nctab) -> s32 #foreign libnotcurses;

// Returns the tab's user pointer.
nctab_userptr :: (t: *nctab) -> *void #foreign libnotcurses;

// Returns the tab to the right of 't'. This does not change which tab is selected.
nctab_next :: (t: *nctab) -> *nctab #foreign libnotcurses;

// Returns the tab to the left of 't'. This does not change which tab is selected.
nctab_prev :: (t: *nctab) -> *nctab #foreign libnotcurses;

// Add a new tab to 'nt' with the given tab callback, name, and user pointer.
// If both 'before' and 'after' are NULL, the tab is inserted after the selected
// tab. Otherwise, it gets put after 'after' (if not NULL) and before 'before'
// (if not NULL). If both 'after' and 'before' are given, they must be two
// neighboring tabs (the tab list is circular, so the last tab is immediately
// before the leftmost tab), otherwise the function returns NULL. If 'name' is
// NULL or a string containing illegal characters, the function returns NULL.
// On all other failures the function also returns NULL. If it returns NULL,
// none of the arguments are modified, and the widget state is not altered.
nctabbed_add :: (nt: *nctabbed, after: *nctab, before: *nctab, tcb: tabcb, name: *u8, opaque: *void) -> *nctab #foreign libnotcurses;

// Remove a tab 't' from 'nt'. Its neighboring tabs become neighbors to each
// other. If 't' if the selected tab, the tab after 't' becomes selected.
// Likewise if 't' is the leftmost tab, the tab after 't' becomes leftmost.
// If 't' is the only tab, there will no more be a selected or leftmost tab,
// until a new tab is added. Returns -1 if 't' is NULL, and 0 otherwise.
nctabbed_del :: (nt: *nctabbed, t: *nctab) -> s32 #foreign libnotcurses;

// Move 't' after 'after' (if not NULL) and before 'before' (if not NULL).
// If both 'after' and 'before' are NULL, the function returns -1, otherwise
// it returns 0.
nctab_move :: (nt: *nctabbed, t: *nctab, after: *nctab, before: *nctab) -> s32 #foreign libnotcurses;

// Move 't' to the right by one tab, looping around to become leftmost if needed.
nctab_move_right :: (nt: *nctabbed, t: *nctab) -> void #foreign libnotcurses;

// Move 't' to the right by one tab, looping around to become the last tab if needed.
nctab_move_left :: (nt: *nctabbed, t: *nctab) -> void #foreign libnotcurses;

// Rotate the tabs of 'nt' right by 'amt' tabs, or '-amt' tabs left if 'amt' is
// negative. Tabs are rotated only by changing the leftmost tab; the selected tab
// stays the same. If there are no tabs, nothing happens.
nctabbed_rotate :: (nt: *nctabbed, amt: s32) -> void #foreign libnotcurses;

// Select the tab after the currently selected tab, and return the newly selected
// tab. Returns NULL if there are no tabs.
nctabbed_next :: (nt: *nctabbed) -> *nctab #foreign libnotcurses;

// Select the tab before the currently selected tab, and return the newly selected
// tab. Returns NULL if there are no tabs.
nctabbed_prev :: (nt: *nctabbed) -> *nctab #foreign libnotcurses;

// Change the selected tab to be 't'. Returns the previously selected tab.
nctabbed_select :: (nt: *nctabbed, t: *nctab) -> *nctab #foreign libnotcurses;

// Write the channels for tab headers, the selected tab header, and the separator
// to '*hdrchan', '*selchan', and '*sepchan' respectively.
nctabbed_channels :: (nt: *nctabbed, hdrchan: *u64, selchan: *u64, sepchan: *u64) -> void #foreign libnotcurses;

nctabbed_hdrchan :: (nt: *nctabbed) -> u64 #foreign libnotcurses_ffi;

nctabbed_selchan :: (nt: *nctabbed) -> u64 #foreign libnotcurses_ffi;

nctabbed_sepchan :: (nt: *nctabbed) -> u64 #foreign libnotcurses_ffi;

// Returns the tab separator. This is not a copy and it should not be stored.
// This can be NULL, if the separator was set to NULL in ncatbbed_create() or
// nctabbed_set_separator().
nctabbed_separator :: (nt: *nctabbed) -> *u8 #foreign libnotcurses;

// Returns the tab separator width, or zero if there is no separator.
nctabbed_separator_width :: (nt: *nctabbed) -> s32 #foreign libnotcurses;

// Set the tab headers channel for 'nt'.
nctabbed_set_hdrchan :: (nt: *nctabbed, chan: u64) -> void #foreign libnotcurses;

// Set the selected tab header channel for 'nt'.
nctabbed_set_selchan :: (nt: *nctabbed, chan: u64) -> void #foreign libnotcurses;

// Set the tab separator channel for 'nt'.
nctabbed_set_sepchan :: (nt: *nctabbed, chan: u64) -> void #foreign libnotcurses;

// Set the tab callback function for 't'. Returns the previous tab callback.
nctab_set_cb :: (t: *nctab, newcb: tabcb) -> tabcb #foreign libnotcurses;

// Change the name of 't'. Returns -1 if 'newname' is NULL, and 0 otherwise.
nctab_set_name :: (t: *nctab, newname: *u8) -> s32 #foreign libnotcurses;

// Set the user pointer of 't'. Returns the previous user pointer.
nctab_set_userptr :: (t: *nctab, newopaque: *void) -> *void #foreign libnotcurses;

// Change the tab separator for 'nt'. Returns -1 if 'separator' is not NULL and
// is not a valid string, and 0 otherwise.
nctabbed_set_separator :: (nt: *nctabbed, separator: *u8) -> s32 #foreign libnotcurses;

ncplot_options :: struct {
    // channels for the maximum and minimum levels. linear or exponential
    // interpolation will be applied across the domain between these two.
    maxchannels: u64;
    minchannels: u64;

    // styling used for the legend, if NCPLOT_OPTION_LABELTICKSD is set
    legendstyle: u16;

    gridtype:    ncblitter_e; // number of "pixels" per row x column

    // independent variable can either be a contiguous range, or a finite set
    // of keys. for a time range, say the previous hour sampled with second
    // resolution, the independent variable would be the range [0..3600): 3600.
    // if rangex is 0, it is dynamically set to the number of columns.
    rangex:      s32;
    title:       *u8; // optional, printed by the labels
    flags:       u64; // bitfield over NCPLOT_OPTION_*
}

// Use the provided plane 'n' for plotting according to the options 'opts'. The
// plot will make free use of the entirety of the plane. For domain
// autodiscovery, set miny == maxy == 0. ncuplot holds uint64_ts, while
// ncdplot holds doubles.
ncuplot_create :: (n: *ncplane, opts: *ncplot_options, miny: u64, maxy: u64) -> *ncuplot #foreign libnotcurses;

ncdplot_create :: (n: *ncplane, opts: *ncplot_options, miny: float64, maxy: float64) -> *ncdplot #foreign libnotcurses;

// Return a reference to the ncplot's underlying ncplane.
ncuplot_plane :: (n: *ncuplot) -> *ncplane #foreign libnotcurses;

ncdplot_plane :: (n: *ncdplot) -> *ncplane #foreign libnotcurses;

// Add to or set the value corresponding to this x. If x is beyond the current
// x window, the x window is advanced to include x, and values passing beyond
// the window are lost. The first call will place the initial window. The plot
// will be redrawn, but notcurses_render() is not called.
ncuplot_add_sample :: (n: *ncuplot, x: u64, y: u64) -> s32 #foreign libnotcurses;

ncdplot_add_sample :: (n: *ncdplot, x: u64, y: float64) -> s32 #foreign libnotcurses;

ncuplot_set_sample :: (n: *ncuplot, x: u64, y: u64) -> s32 #foreign libnotcurses;

ncdplot_set_sample :: (n: *ncdplot, x: u64, y: float64) -> s32 #foreign libnotcurses;

ncuplot_sample :: (n: *ncuplot, x: u64, y: *u64) -> s32 #foreign libnotcurses;

ncdplot_sample :: (n: *ncdplot, x: u64, y: *float64) -> s32 #foreign libnotcurses;

ncuplot_destroy :: (n: *ncuplot) -> void #foreign libnotcurses;
ncdplot_destroy :: (n: *ncdplot) -> void #foreign libnotcurses;

ncfdplane_callback :: #type (n: *ncfdplane, buf: *void, s: u64, curry: *void) -> s32 #c_call;
ncfdplane_done_cb :: #type (n: *ncfdplane, fderrno: s32, curry: *void) -> s32 #c_call;

// read from an fd until EOF (or beyond, if follow is set), invoking the user's
// callback each time. runs in its own context. on EOF or error, the finalizer
// callback will be invoked, and the user ought destroy the ncfdplane. the
// data is *not* guaranteed to be nul-terminated, and may contain arbitrary
// zeroes.
ncfdplane_options :: struct {
    curry:  *void; // parameter provided to callbacks
    follow: bool; // keep reading after hitting end? (think tail -f)
    flags:  u64; // bitfield over NCOPTION_FDPLANE_*
}

// Create an ncfdplane around the fd 'fd'. Consider this function to take
// ownership of the file descriptor, which will be closed in ncfdplane_destroy().
ncfdplane_create :: (n: *ncplane, opts: *ncfdplane_options, fd: s32, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) -> *ncfdplane #foreign libnotcurses;

ncfdplane_plane :: (n: *ncfdplane) -> *ncplane #foreign libnotcurses;

ncfdplane_destroy :: (n: *ncfdplane) -> s32 #foreign libnotcurses;

ncsubproc_options :: struct {
    curry:          *void;
    restart_period: u64; // restart this many seconds after an exit (watch)
    flags:          u64; // bitfield over NCOPTION_SUBPROC_*
}

// see exec(2). p-types use $PATH. e-type passes environment vars.
ncsubproc_createv :: (n: *ncplane, opts: *ncsubproc_options, bin: *u8, arg: **u8, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) -> *ncsubproc #foreign libnotcurses;

ncsubproc_createvp :: (n: *ncplane, opts: *ncsubproc_options, bin: *u8, arg: **u8, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) -> *ncsubproc #foreign libnotcurses;

ncsubproc_createvpe :: (n: *ncplane, opts: *ncsubproc_options, bin: *u8, arg: **u8, env: **u8, cbfxn: ncfdplane_callback, donecbfxn: ncfdplane_done_cb) -> *ncsubproc #foreign libnotcurses;

ncsubproc_plane :: (n: *ncsubproc) -> *ncplane #foreign libnotcurses;

ncsubproc_destroy :: (n: *ncsubproc) -> s32 #foreign libnotcurses;

// Draw a QR code at the current position on the plane. If there is insufficient
// room to draw the code here, or there is any other error, non-zero will be
// returned. Otherwise, the QR code "version" (size) is returned. The QR code
// is (version * 4 + 17) columns wide, and ⌈version * 4 + 17⌉ rows tall (the
// properly-scaled values are written back to '*ymax' and '*xmax').
// NCBLIT_2x1 is always used, and the call will fail if it is not available,
// as only this blitter can generate a proper aspect ratio.
ncplane_qrcode :: (n: *ncplane, ymax: *u32, xmax: *u32, data: *void, len: u64) -> s32 #foreign libnotcurses;

ncreader_options :: struct {
    tchannels: u64; // channels used for input
    tattrword: u32; // attributes used for input
    flags:     u64; // bitfield of NCREADER_OPTION_*
}

// ncreaders provide freeform input in a (possibly multiline) region, supporting
// optional readline keybindings. takes ownership of 'n', destroying it on any
// error (ncreader_destroy() otherwise destroys the ncplane).
ncreader_create :: (n: *ncplane, opts: *ncreader_options) -> *ncreader #foreign libnotcurses;

// empty the ncreader of any user input, and home the cursor.
ncreader_clear :: (n: *ncreader) -> s32 #foreign libnotcurses;

ncreader_plane :: (n: *ncreader) -> *ncplane #foreign libnotcurses;

// Offer the input to the ncreader. If it's relevant, this function returns
// true, and the input ought not be processed further. Almost all inputs
// are relevant to an ncreader, save synthesized ones.
ncreader_offer_input :: (n: *ncreader, ni: *ncinput) -> bool #foreign libnotcurses;

// Atttempt to move in the specified direction. Returns 0 if a move was
// successfully executed, -1 otherwise. Scrolling is taken into account.
ncreader_move_left :: (n: *ncreader) -> s32 #foreign libnotcurses;

ncreader_move_right :: (n: *ncreader) -> s32 #foreign libnotcurses;

ncreader_move_up :: (n: *ncreader) -> s32 #foreign libnotcurses;

ncreader_move_down :: (n: *ncreader) -> s32 #foreign libnotcurses;

// Destructively write the provided EGC to the current cursor location. Move
// the cursor as necessary, scrolling if applicable.
ncreader_write_egc :: (n: *ncreader, egc: *u8) -> s32 #foreign libnotcurses;

// return a heap-allocated copy of the current (UTF-8) contents.
ncreader_contents :: (n: *ncreader) -> *u8 #foreign libnotcurses;

// destroy the reader and its bound plane. if 'contents' is not NULL, the
// UTF-8 input will be heap-duplicated and written to 'contents'.
ncreader_destroy :: (n: *ncreader, contents: **u8) -> void #foreign libnotcurses;

// Returns a heap-allocated copy of the user name under which we are running.
notcurses_accountname :: () -> *u8 #foreign libnotcurses;

// Returns a heap-allocated copy of the local host name.
notcurses_hostname :: () -> *u8 #foreign libnotcurses;

// Returns a heap-allocated copy of human-readable OS name and version.
notcurses_osversion :: () -> *u8 #foreign libnotcurses;

// Dump selected Notcurses state to the supplied 'debugfp'. Output is freeform,
// newline-delimited, and subject to change. It includes geometry of all
// planes, from all piles. No line has more than 80 columns' worth of output.
notcurses_debug :: (nc: *notcurses, debugfp: *FILE) -> void #foreign libnotcurses;

// The same as ncdirect_init(), but without any multimedia functionality,
// allowing for a svelter binary. Link with notcurses-core if this is used.
ncdirect_core_init :: (termtype: *u8, fp: *FILE, flags: u64) -> *ncdirect #foreign libnotcurses;

// Read a (heap-allocated) newline-delimited chunk of text, after printing the
// prompt. The newline itself, if present, is included. Returns NULL on error.
ncdirect_readline :: (nc: *ncdirect, prompt: *u8) -> *u8 #foreign libnotcurses;

// Direct mode. This API can be used to colorize and stylize output generated
// outside of notcurses, without ever calling notcurses_render(). These should
// not be intermixed with standard Notcurses rendering.
ncdirect_set_fg_rgb :: (nc: *ncdirect, rgb: u32) -> s32 #foreign libnotcurses;

ncdirect_set_bg_rgb :: (nc: *ncdirect, rgb: u32) -> s32 #foreign libnotcurses;

ncdirect_set_fg_palindex :: (nc: *ncdirect, pidx: s32) -> s32 #foreign libnotcurses;

ncdirect_set_bg_palindex :: (nc: *ncdirect, pidx: s32) -> s32 #foreign libnotcurses;

// Returns the number of simultaneous colors claimed to be supported, or 1 if
// there is no color support. Note that several terminal emulators advertise
// more colors than they actually support, downsampling internally.
ncdirect_palette_size :: (nc: *ncdirect) -> u32 #foreign libnotcurses;

// Output the string |utf8| according to the channels |channels|. Note that
// ncdirect_putstr() does not explicitly flush output buffers, so it will not
// necessarily be immediately visible. Returns EOF on error.
ncdirect_putstr :: (nc: *ncdirect, channels: u64, utf8: *u8) -> s32 #foreign libnotcurses;

// Output a single EGC (this might be several characters) from |utf8|,
// according to the channels |channels|. On success, the number of columns
// thought to have been used is returned, and if |sbytes| is not NULL,
// the number of bytes consumed will be written there.
ncdirect_putegc :: (nc: *ncdirect, channels: u64, utf8: *u8, sbytes: *s32) -> s32 #foreign libnotcurses;

// Formatted printing (plus alignment relative to the terminal). Returns the
// number of columns printed on success.
ncdirect_printf_aligned_CFormat :: (n: *ncdirect, y: s32, align: ncalign_e, fmt: *u8, __args: ..Any) -> s32 #foreign libnotcurses "ncdirect_printf_aligned";
ncdirect_printf_aligned :: (n: *ncdirect, y: s32, align: ncalign_e, fmt: string, __args: ..Any) -> s32 {
    push_allocator(temp);
    formatted_text_builder: String_Builder;
    print_to_builder(*formatted_text_builder, fmt, ..__args);
    append(*formatted_text_builder, "\0");
    formatted_text := builder_to_string(*formatted_text_builder);
    return ncdirect_printf_aligned_CFormat(n, y, align, "%s", formatted_text.data);
} @PrintLike

// Force a flush. Returns 0 on success, -1 on failure.
ncdirect_flush :: (nc: *ncdirect) -> s32 #foreign libnotcurses;

ncdirect_set_bg_rgb8 :: (nc: *ncdirect, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

ncdirect_set_fg_rgb8 :: (nc: *ncdirect, r: u32, g: u32, b: u32) -> s32 #foreign libnotcurses_ffi;

ncdirect_set_fg_default :: (nc: *ncdirect) -> s32 #foreign libnotcurses;

ncdirect_set_bg_default :: (nc: *ncdirect) -> s32 #foreign libnotcurses;

// Get the current number of columns/rows.
ncdirect_dim_x :: (nc: *ncdirect) -> u32 #foreign libnotcurses;
ncdirect_dim_y :: (nc: *ncdirect) -> u32 #foreign libnotcurses;

// Returns a 16-bit bitmask of supported curses-style attributes
// (NCSTYLE_UNDERLINE, NCSTYLE_BOLD, etc.) The attribute is only
// indicated as supported if the terminal can support it together with color.
// For more information, see the "ncv" capability in terminfo(5).
ncdirect_supported_styles :: (nc: *ncdirect) -> u16 #foreign libnotcurses;

// ncplane_styles_*() analogues
ncdirect_set_styles :: (n: *ncdirect, stylebits: u32) -> s32 #foreign libnotcurses;

ncdirect_on_styles :: (n: *ncdirect, stylebits: u32) -> s32 #foreign libnotcurses;

ncdirect_off_styles :: (n: *ncdirect, stylebits: u32) -> s32 #foreign libnotcurses;

ncdirect_styles :: (n: *ncdirect) -> u16 #foreign libnotcurses;

// Move the cursor in direct mode. -1 to retain current location on that axis.
ncdirect_cursor_move_yx :: (n: *ncdirect, y: s32, x: s32) -> s32 #foreign libnotcurses;

ncdirect_cursor_enable :: (nc: *ncdirect) -> s32 #foreign libnotcurses;

ncdirect_cursor_disable :: (nc: *ncdirect) -> s32 #foreign libnotcurses;

ncdirect_cursor_up :: (nc: *ncdirect, num: s32) -> s32 #foreign libnotcurses;

ncdirect_cursor_left :: (nc: *ncdirect, num: s32) -> s32 #foreign libnotcurses;

ncdirect_cursor_right :: (nc: *ncdirect, num: s32) -> s32 #foreign libnotcurses;

ncdirect_cursor_down :: (nc: *ncdirect, num: s32) -> s32 #foreign libnotcurses;

// Get the cursor position, when supported. This requires writing to the
// terminal, and then reading from it. If the terminal doesn't reply, or
// doesn't reply in a way we understand, the results might be deleterious.
ncdirect_cursor_yx :: (n: *ncdirect, y: *u32, x: *u32) -> s32 #foreign libnotcurses;

// Push or pop the cursor location to the terminal's stack. The depth of this
// stack, and indeed its existence, is terminal-dependent.
ncdirect_cursor_push :: (n: *ncdirect) -> s32 #foreign libnotcurses;

ncdirect_cursor_pop :: (n: *ncdirect) -> s32 #foreign libnotcurses;

// Clear the screen.
ncdirect_clear :: (nc: *ncdirect) -> s32 #foreign libnotcurses;

ncdirect_capabilities :: (n: *ncdirect) -> *nccapabilities #foreign libnotcurses;

// Draw horizontal/vertical lines using the specified channels, interpolating
// between them as we go. The EGC may not use more than one column. For a
// horizontal line, |len| cannot exceed the screen width minus the cursor's
// offset. For a vertical line, it may be as long as you'd like; the screen
// will scroll as necessary. All lines start at the current cursor position.
ncdirect_hline_interp :: (n: *ncdirect, egc: *u8, len: u32, h1: u64, h2: u64) -> s32 #foreign libnotcurses;

ncdirect_vline_interp :: (n: *ncdirect, egc: *u8, len: u32, h1: u64, h2: u64) -> s32 #foreign libnotcurses;

// Draw a box with its upper-left corner at the current cursor position, having
// dimensions |ylen|x|xlen|. See ncplane_box() for more information. The
// minimum box size is 2x2, and it cannot be drawn off-screen. |wchars| is an
// array of 6 wide characters: UL, UR, LL, LR, HL, VL.
ncdirect_box :: (n: *ncdirect, ul: u64, ur: u64, ll: u64, lr: u64, wchars: *s32, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses;

ncdirect_light_box :: (n: *ncdirect, ul: u64, ur: u64, ll: u64, lr: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncdirect_heavy_box :: (n: *ncdirect, ul: u64, ur: u64, ll: u64, lr: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

ncdirect_ascii_box :: (n: *ncdirect, ul: u64, ur: u64, ll: u64, lr: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses_ffi;

// ncdirect_box() with the rounded box-drawing characters
ncdirect_rounded_box :: (n: *ncdirect, ul: u64, ur: u64, ll: u64, lr: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses;

// ncdirect_box() with the double box-drawing characters
ncdirect_double_box :: (n: *ncdirect, ul: u64, ur: u64, ll: u64, lr: u64, ylen: u32, xlen: u32, ctlword: u32) -> s32 #foreign libnotcurses;

// Provide a NULL 'ts' to block at length, a 'ts' of 0 for non-blocking
// operation, and otherwise an absolute deadline in terms of CLOCK_MONOTONIC.
// Returns a single Unicode code point, a synthesized special key constant,
// or (uint32_t)-1 on error. Returns 0 on a timeout. If an event is processed,
// the return value is the 'id' field from that event. 'ni' may be NULL.
ncdirect_get :: (n: *ncdirect, absdl: *timespec, ni: *ncinput) -> u32 #foreign libnotcurses;

// Get a file descriptor suitable for input event poll()ing. When this
// descriptor becomes available, you can call ncdirect_get_nblock(),
// and input ought be ready. This file descriptor is *not* necessarily
// the file descriptor associated with stdin (but it might be!).
ncdirect_inputready_fd :: (n: *ncdirect) -> s32 #foreign libnotcurses;

// 'ni' may be NULL if the caller is uninterested in event details. If no event
// is ready, returns 0.
ncdirect_get_nblock :: (n: *ncdirect, ni: *ncinput) -> u32 #foreign libnotcurses_ffi;

// 'ni' may be NULL if the caller is uninterested in event details. Blocks
// until an event is processed or a signal is received.
ncdirect_get_blocking :: (n: *ncdirect, ni: *ncinput) -> u32 #foreign libnotcurses_ffi;

// Release 'nc' and any associated resources. 0 on success, non-0 on failure.
ncdirect_stop :: (nc: *ncdirect) -> s32 #foreign libnotcurses;

ncdirectv :: ncplane;
ncdirectf :: ncvisual;

// Display an image using the specified blitter and scaling. The image may
// be arbitrarily many rows -- the output will scroll -- but will only occupy
// the column of the cursor, and those to the right. The render/raster process
// can be split by using ncdirect_render_frame() and ncdirect_raster_frame().
ncdirect_render_image :: (n: *ncdirect, filename: *u8, align: ncalign_e, blitter: ncblitter_e, scale: ncscale_e) -> s32 #foreign libnotcurses;

// Render an image using the specified blitter and scaling, but do not write
// the result. The image may be arbitrarily many rows -- the output will scroll
// -- but will only occupy the column of the cursor, and those to the right.
// To actually write (and free) this, invoke ncdirect_raster_frame(). 'maxx'
// and 'maxy' (cell geometry, *not* pixel), if greater than 0, are used for
// scaling; the terminal's geometry is otherwise used.
ncdirect_render_frame :: (n: *ncdirect, filename: *u8, blitter: ncblitter_e, scale: ncscale_e, maxy: s32, maxx: s32) -> *ncdirectv #foreign libnotcurses;

// Takes the result of ncdirect_render_frame() and writes it to the output,
// freeing it on all paths.
ncdirect_raster_frame :: (n: *ncdirect, ncdv: *ncdirectv, align: ncalign_e) -> s32 #foreign libnotcurses;

// Load media from disk, but do not yet render it (presumably because you want
// to get its geometry via ncdirectf_geom(), or to use the same file with
// ncdirect_render_loaded_frame() multiple times). You must destroy the result
// with ncdirectf_free();
ncdirectf_from_file :: (n: *ncdirect, filename: *u8) -> *ncdirectf #foreign libnotcurses;

// Free a ncdirectf returned from ncdirectf_from_file().
ncdirectf_free :: (frame: *ncdirectf) -> void #foreign libnotcurses;

// Same as ncdirect_render_frame(), except 'frame' must already have been
// loaded. A loaded frame may be rendered in different ways before it is
// destroyed.
ncdirectf_render :: (n: *ncdirect, frame: *ncdirectf, vopts: *ncvisual_options) -> *ncdirectv #foreign libnotcurses;

// Having loaded the frame 'frame', get the geometry of a potential render.
ncdirectf_geom :: (n: *ncdirect, frame: *ncdirectf, vopts: *ncvisual_options, geom: *ncvgeom) -> s32 #foreign libnotcurses;

// Load successive frames from a file, invoking 'streamer' on each.
ncdirect_stream :: (n: *ncdirect, filename: *u8, streamer: ncstreamcb, vopts: *ncvisual_options, curry: *void) -> s32 #foreign libnotcurses;

// Capabilites
ncdirect_detected_terminal :: (n: *ncdirect) -> *u8 #foreign libnotcurses;

// Can we directly specify RGB values per cell, or only use palettes?
ncdirect_cantruecolor :: (n: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we set the "hardware" palette? Requires the "ccc" terminfo capability.
ncdirect_canchangecolor :: (n: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we fade? Fading requires either the "rgb" or "ccc" terminfo capability.
ncdirect_canfade :: (n: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we load images? This requires being built against FFmpeg/OIIO.
ncdirect_canopen_images :: (n: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we load videos? This requires being built against FFmpeg.
ncdirect_canopen_videos :: (n: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Is our encoding UTF-8? Requires LANG being set to a UTF8 locale.
ncdirect_canutf8 :: (n: *ncdirect) -> bool #foreign libnotcurses;

// Can we blit pixel-accurate bitmaps?
ncdirect_check_pixel_support :: (n: *ncdirect) -> s32 #foreign libnotcurses;

// Can we reliably use Unicode halfblocks?
ncdirect_canhalfblock :: (nc: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode quadrants?
ncdirect_canquadrant :: (nc: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode 13 sextants?
ncdirect_cansextant :: (nc: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode 16 octants?
ncdirect_canoctant :: (nc: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Can we reliably use Unicode Braille?
ncdirect_canbraille :: (nc: *ncdirect) -> bool #foreign libnotcurses_ffi;

// Is there support for acquiring the cursor's current position? Requires the
// u7 terminfo capability, and that we are connected to an actual terminal.
ncdirect_canget_cursor :: (nc: *ncdirect) -> bool #foreign libnotcurses;

#scope_file

#import "Basic"; // For assert, push_context


#run {
    {
        instance: timespec;
        assert(((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)) == 0, "timespec.tv_sec has unexpected offset % instead of 0", ((cast(*void)(*instance.tv_sec)) - cast(*void)(*instance)));
        assert(size_of(type_of(timespec.tv_sec)) == 8, "timespec.tv_sec has unexpected size % instead of 8", size_of(type_of(timespec.tv_sec)));
        assert(((cast(*void)(*instance.tv_nsec)) - cast(*void)(*instance)) == 8, "timespec.tv_nsec has unexpected offset % instead of 8", ((cast(*void)(*instance.tv_nsec)) - cast(*void)(*instance)));
        assert(size_of(type_of(timespec.tv_nsec)) == 8, "timespec.tv_nsec has unexpected size % instead of 8", size_of(type_of(timespec.tv_nsec)));
        assert(size_of(timespec) == 16, "timespec has size % instead of 16", size_of(timespec));
    }

    {
        instance: nccell;
        assert(((cast(*void)(*instance.gcluster)) - cast(*void)(*instance)) == 0, "nccell.gcluster has unexpected offset % instead of 0", ((cast(*void)(*instance.gcluster)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccell.gcluster)) == 4, "nccell.gcluster has unexpected size % instead of 4", size_of(type_of(nccell.gcluster)));
        assert(((cast(*void)(*instance.gcluster_backstop)) - cast(*void)(*instance)) == 4, "nccell.gcluster_backstop has unexpected offset % instead of 4", ((cast(*void)(*instance.gcluster_backstop)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccell.gcluster_backstop)) == 1, "nccell.gcluster_backstop has unexpected size % instead of 1", size_of(type_of(nccell.gcluster_backstop)));
        assert(((cast(*void)(*instance.width)) - cast(*void)(*instance)) == 5, "nccell.width has unexpected offset % instead of 5", ((cast(*void)(*instance.width)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccell.width)) == 1, "nccell.width has unexpected size % instead of 1", size_of(type_of(nccell.width)));
        assert(((cast(*void)(*instance.stylemask)) - cast(*void)(*instance)) == 6, "nccell.stylemask has unexpected offset % instead of 6", ((cast(*void)(*instance.stylemask)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccell.stylemask)) == 2, "nccell.stylemask has unexpected size % instead of 2", size_of(type_of(nccell.stylemask)));
        assert(((cast(*void)(*instance.channels)) - cast(*void)(*instance)) == 8, "nccell.channels has unexpected offset % instead of 8", ((cast(*void)(*instance.channels)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccell.channels)) == 8, "nccell.channels has unexpected size % instead of 8", size_of(type_of(nccell.channels)));
        assert(size_of(nccell) == 16, "nccell has size % instead of 16", size_of(nccell));
    }

    {
        instance: notcurses_options;
        assert(((cast(*void)(*instance.termtype)) - cast(*void)(*instance)) == 0, "notcurses_options.termtype has unexpected offset % instead of 0", ((cast(*void)(*instance.termtype)) - cast(*void)(*instance)));
        assert(size_of(type_of(notcurses_options.termtype)) == 8, "notcurses_options.termtype has unexpected size % instead of 8", size_of(type_of(notcurses_options.termtype)));
        assert(((cast(*void)(*instance.loglevel)) - cast(*void)(*instance)) == 8, "notcurses_options.loglevel has unexpected offset % instead of 8", ((cast(*void)(*instance.loglevel)) - cast(*void)(*instance)));
        assert(size_of(type_of(notcurses_options.loglevel)) == 4, "notcurses_options.loglevel has unexpected size % instead of 4", size_of(type_of(notcurses_options.loglevel)));
        assert(((cast(*void)(*instance.margin_t)) - cast(*void)(*instance)) == 12, "notcurses_options.margin_t has unexpected offset % instead of 12", ((cast(*void)(*instance.margin_t)) - cast(*void)(*instance)));
        assert(size_of(type_of(notcurses_options.margin_t)) == 4, "notcurses_options.margin_t has unexpected size % instead of 4", size_of(type_of(notcurses_options.margin_t)));
        assert(((cast(*void)(*instance.margin_r)) - cast(*void)(*instance)) == 16, "notcurses_options.margin_r has unexpected offset % instead of 16", ((cast(*void)(*instance.margin_r)) - cast(*void)(*instance)));
        assert(size_of(type_of(notcurses_options.margin_r)) == 4, "notcurses_options.margin_r has unexpected size % instead of 4", size_of(type_of(notcurses_options.margin_r)));
        assert(((cast(*void)(*instance.margin_b)) - cast(*void)(*instance)) == 20, "notcurses_options.margin_b has unexpected offset % instead of 20", ((cast(*void)(*instance.margin_b)) - cast(*void)(*instance)));
        assert(size_of(type_of(notcurses_options.margin_b)) == 4, "notcurses_options.margin_b has unexpected size % instead of 4", size_of(type_of(notcurses_options.margin_b)));
        assert(((cast(*void)(*instance.margin_l)) - cast(*void)(*instance)) == 24, "notcurses_options.margin_l has unexpected offset % instead of 24", ((cast(*void)(*instance.margin_l)) - cast(*void)(*instance)));
        assert(size_of(type_of(notcurses_options.margin_l)) == 4, "notcurses_options.margin_l has unexpected size % instead of 4", size_of(type_of(notcurses_options.margin_l)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 32, "notcurses_options.flags has unexpected offset % instead of 32", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(notcurses_options.flags)) == 8, "notcurses_options.flags has unexpected size % instead of 8", size_of(type_of(notcurses_options.flags)));
        assert(size_of(notcurses_options) == 40, "notcurses_options has size % instead of 40", size_of(notcurses_options));
    }

    {
        instance: ncinput;
        assert(((cast(*void)(*instance.id)) - cast(*void)(*instance)) == 0, "ncinput.id has unexpected offset % instead of 0", ((cast(*void)(*instance.id)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.id)) == 4, "ncinput.id has unexpected size % instead of 4", size_of(type_of(ncinput.id)));
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 4, "ncinput.y has unexpected offset % instead of 4", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.y)) == 4, "ncinput.y has unexpected size % instead of 4", size_of(type_of(ncinput.y)));
        assert(((cast(*void)(*instance.x)) - cast(*void)(*instance)) == 8, "ncinput.x has unexpected offset % instead of 8", ((cast(*void)(*instance.x)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.x)) == 4, "ncinput.x has unexpected size % instead of 4", size_of(type_of(ncinput.x)));
        assert(((cast(*void)(*instance.utf8)) - cast(*void)(*instance)) == 12, "ncinput.utf8 has unexpected offset % instead of 12", ((cast(*void)(*instance.utf8)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.utf8)) == 5, "ncinput.utf8 has unexpected size % instead of 5", size_of(type_of(ncinput.utf8)));
        assert(((cast(*void)(*instance.alt)) - cast(*void)(*instance)) == 17, "ncinput.alt has unexpected offset % instead of 17", ((cast(*void)(*instance.alt)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.alt)) == 1, "ncinput.alt has unexpected size % instead of 1", size_of(type_of(ncinput.alt)));
        assert(((cast(*void)(*instance.shift)) - cast(*void)(*instance)) == 18, "ncinput.shift has unexpected offset % instead of 18", ((cast(*void)(*instance.shift)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.shift)) == 1, "ncinput.shift has unexpected size % instead of 1", size_of(type_of(ncinput.shift)));
        assert(((cast(*void)(*instance.ctrl)) - cast(*void)(*instance)) == 19, "ncinput.ctrl has unexpected offset % instead of 19", ((cast(*void)(*instance.ctrl)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.ctrl)) == 1, "ncinput.ctrl has unexpected size % instead of 1", size_of(type_of(ncinput.ctrl)));
        assert(((cast(*void)(*instance.evtype)) - cast(*void)(*instance)) == 20, "ncinput.evtype has unexpected offset % instead of 20", ((cast(*void)(*instance.evtype)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.evtype)) == 4, "ncinput.evtype has unexpected size % instead of 4", size_of(type_of(ncinput.evtype)));
        assert(((cast(*void)(*instance.modifiers)) - cast(*void)(*instance)) == 24, "ncinput.modifiers has unexpected offset % instead of 24", ((cast(*void)(*instance.modifiers)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.modifiers)) == 4, "ncinput.modifiers has unexpected size % instead of 4", size_of(type_of(ncinput.modifiers)));
        assert(((cast(*void)(*instance.ypx)) - cast(*void)(*instance)) == 28, "ncinput.ypx has unexpected offset % instead of 28", ((cast(*void)(*instance.ypx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.ypx)) == 4, "ncinput.ypx has unexpected size % instead of 4", size_of(type_of(ncinput.ypx)));
        assert(((cast(*void)(*instance.xpx)) - cast(*void)(*instance)) == 32, "ncinput.xpx has unexpected offset % instead of 32", ((cast(*void)(*instance.xpx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.xpx)) == 4, "ncinput.xpx has unexpected size % instead of 4", size_of(type_of(ncinput.xpx)));
        assert(((cast(*void)(*instance.eff_text)) - cast(*void)(*instance)) == 36, "ncinput.eff_text has unexpected offset % instead of 36", ((cast(*void)(*instance.eff_text)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncinput.eff_text)) == 16, "ncinput.eff_text has unexpected size % instead of 16", size_of(type_of(ncinput.eff_text)));
        assert(size_of(ncinput) == 52, "ncinput has size % instead of 52", size_of(ncinput));
    }

    {
        instance: ncplane_options;
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 0, "ncplane_options.y has unexpected offset % instead of 0", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.y)) == 4, "ncplane_options.y has unexpected size % instead of 4", size_of(type_of(ncplane_options.y)));
        assert(((cast(*void)(*instance.x)) - cast(*void)(*instance)) == 4, "ncplane_options.x has unexpected offset % instead of 4", ((cast(*void)(*instance.x)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.x)) == 4, "ncplane_options.x has unexpected size % instead of 4", size_of(type_of(ncplane_options.x)));
        assert(((cast(*void)(*instance.rows)) - cast(*void)(*instance)) == 8, "ncplane_options.rows has unexpected offset % instead of 8", ((cast(*void)(*instance.rows)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.rows)) == 4, "ncplane_options.rows has unexpected size % instead of 4", size_of(type_of(ncplane_options.rows)));
        assert(((cast(*void)(*instance.cols)) - cast(*void)(*instance)) == 12, "ncplane_options.cols has unexpected offset % instead of 12", ((cast(*void)(*instance.cols)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.cols)) == 4, "ncplane_options.cols has unexpected size % instead of 4", size_of(type_of(ncplane_options.cols)));
        assert(((cast(*void)(*instance.userptr)) - cast(*void)(*instance)) == 16, "ncplane_options.userptr has unexpected offset % instead of 16", ((cast(*void)(*instance.userptr)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.userptr)) == 8, "ncplane_options.userptr has unexpected size % instead of 8", size_of(type_of(ncplane_options.userptr)));
        assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 24, "ncplane_options.name has unexpected offset % instead of 24", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.name)) == 8, "ncplane_options.name has unexpected size % instead of 8", size_of(type_of(ncplane_options.name)));
        assert(((cast(*void)(*instance.resizecb)) - cast(*void)(*instance)) == 32, "ncplane_options.resizecb has unexpected offset % instead of 32", ((cast(*void)(*instance.resizecb)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.resizecb)) == 8, "ncplane_options.resizecb has unexpected size % instead of 8", size_of(type_of(ncplane_options.resizecb)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 40, "ncplane_options.flags has unexpected offset % instead of 40", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.flags)) == 8, "ncplane_options.flags has unexpected size % instead of 8", size_of(type_of(ncplane_options.flags)));
        assert(((cast(*void)(*instance.margin_b)) - cast(*void)(*instance)) == 48, "ncplane_options.margin_b has unexpected offset % instead of 48", ((cast(*void)(*instance.margin_b)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.margin_b)) == 4, "ncplane_options.margin_b has unexpected size % instead of 4", size_of(type_of(ncplane_options.margin_b)));
        assert(((cast(*void)(*instance.margin_r)) - cast(*void)(*instance)) == 52, "ncplane_options.margin_r has unexpected offset % instead of 52", ((cast(*void)(*instance.margin_r)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplane_options.margin_r)) == 4, "ncplane_options.margin_r has unexpected size % instead of 4", size_of(type_of(ncplane_options.margin_r)));
        assert(size_of(ncplane_options) == 56, "ncplane_options has size % instead of 56", size_of(ncplane_options));
    }

    {
        instance: ncpalette;
        assert(((cast(*void)(*instance.chans)) - cast(*void)(*instance)) == 0, "ncpalette.chans has unexpected offset % instead of 0", ((cast(*void)(*instance.chans)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncpalette.chans)) == 1024, "ncpalette.chans has unexpected size % instead of 1024", size_of(type_of(ncpalette.chans)));
        assert(size_of(ncpalette) == 1024, "ncpalette has size % instead of 1024", size_of(ncpalette));
    }

    {
        instance: nccapabilities;
        assert(((cast(*void)(*instance.colors)) - cast(*void)(*instance)) == 0, "nccapabilities.colors has unexpected offset % instead of 0", ((cast(*void)(*instance.colors)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.colors)) == 4, "nccapabilities.colors has unexpected size % instead of 4", size_of(type_of(nccapabilities.colors)));
        assert(((cast(*void)(*instance.utf8)) - cast(*void)(*instance)) == 4, "nccapabilities.utf8 has unexpected offset % instead of 4", ((cast(*void)(*instance.utf8)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.utf8)) == 1, "nccapabilities.utf8 has unexpected size % instead of 1", size_of(type_of(nccapabilities.utf8)));
        assert(((cast(*void)(*instance.rgb)) - cast(*void)(*instance)) == 5, "nccapabilities.rgb has unexpected offset % instead of 5", ((cast(*void)(*instance.rgb)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.rgb)) == 1, "nccapabilities.rgb has unexpected size % instead of 1", size_of(type_of(nccapabilities.rgb)));
        assert(((cast(*void)(*instance.can_change_colors)) - cast(*void)(*instance)) == 6, "nccapabilities.can_change_colors has unexpected offset % instead of 6", ((cast(*void)(*instance.can_change_colors)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.can_change_colors)) == 1, "nccapabilities.can_change_colors has unexpected size % instead of 1", size_of(type_of(nccapabilities.can_change_colors)));
        assert(((cast(*void)(*instance.halfblocks)) - cast(*void)(*instance)) == 7, "nccapabilities.halfblocks has unexpected offset % instead of 7", ((cast(*void)(*instance.halfblocks)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.halfblocks)) == 1, "nccapabilities.halfblocks has unexpected size % instead of 1", size_of(type_of(nccapabilities.halfblocks)));
        assert(((cast(*void)(*instance.quadrants)) - cast(*void)(*instance)) == 8, "nccapabilities.quadrants has unexpected offset % instead of 8", ((cast(*void)(*instance.quadrants)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.quadrants)) == 1, "nccapabilities.quadrants has unexpected size % instead of 1", size_of(type_of(nccapabilities.quadrants)));
        assert(((cast(*void)(*instance.sextants)) - cast(*void)(*instance)) == 9, "nccapabilities.sextants has unexpected offset % instead of 9", ((cast(*void)(*instance.sextants)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.sextants)) == 1, "nccapabilities.sextants has unexpected size % instead of 1", size_of(type_of(nccapabilities.sextants)));
        assert(((cast(*void)(*instance.octants)) - cast(*void)(*instance)) == 10, "nccapabilities.octants has unexpected offset % instead of 10", ((cast(*void)(*instance.octants)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.octants)) == 1, "nccapabilities.octants has unexpected size % instead of 1", size_of(type_of(nccapabilities.octants)));
        assert(((cast(*void)(*instance.braille)) - cast(*void)(*instance)) == 11, "nccapabilities.braille has unexpected offset % instead of 11", ((cast(*void)(*instance.braille)) - cast(*void)(*instance)));
        assert(size_of(type_of(nccapabilities.braille)) == 1, "nccapabilities.braille has unexpected size % instead of 1", size_of(type_of(nccapabilities.braille)));
        assert(size_of(nccapabilities) == 12, "nccapabilities has size % instead of 12", size_of(nccapabilities));
    }

    {
        instance: ncstats;
        assert(((cast(*void)(*instance.renders)) - cast(*void)(*instance)) == 0, "ncstats.renders has unexpected offset % instead of 0", ((cast(*void)(*instance.renders)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.renders)) == 8, "ncstats.renders has unexpected size % instead of 8", size_of(type_of(ncstats.renders)));
        assert(((cast(*void)(*instance.writeouts)) - cast(*void)(*instance)) == 8, "ncstats.writeouts has unexpected offset % instead of 8", ((cast(*void)(*instance.writeouts)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.writeouts)) == 8, "ncstats.writeouts has unexpected size % instead of 8", size_of(type_of(ncstats.writeouts)));
        assert(((cast(*void)(*instance.failed_renders)) - cast(*void)(*instance)) == 16, "ncstats.failed_renders has unexpected offset % instead of 16", ((cast(*void)(*instance.failed_renders)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.failed_renders)) == 8, "ncstats.failed_renders has unexpected size % instead of 8", size_of(type_of(ncstats.failed_renders)));
        assert(((cast(*void)(*instance.failed_writeouts)) - cast(*void)(*instance)) == 24, "ncstats.failed_writeouts has unexpected offset % instead of 24", ((cast(*void)(*instance.failed_writeouts)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.failed_writeouts)) == 8, "ncstats.failed_writeouts has unexpected size % instead of 8", size_of(type_of(ncstats.failed_writeouts)));
        assert(((cast(*void)(*instance.raster_bytes)) - cast(*void)(*instance)) == 32, "ncstats.raster_bytes has unexpected offset % instead of 32", ((cast(*void)(*instance.raster_bytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.raster_bytes)) == 8, "ncstats.raster_bytes has unexpected size % instead of 8", size_of(type_of(ncstats.raster_bytes)));
        assert(((cast(*void)(*instance.raster_max_bytes)) - cast(*void)(*instance)) == 40, "ncstats.raster_max_bytes has unexpected offset % instead of 40", ((cast(*void)(*instance.raster_max_bytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.raster_max_bytes)) == 8, "ncstats.raster_max_bytes has unexpected size % instead of 8", size_of(type_of(ncstats.raster_max_bytes)));
        assert(((cast(*void)(*instance.raster_min_bytes)) - cast(*void)(*instance)) == 48, "ncstats.raster_min_bytes has unexpected offset % instead of 48", ((cast(*void)(*instance.raster_min_bytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.raster_min_bytes)) == 8, "ncstats.raster_min_bytes has unexpected size % instead of 8", size_of(type_of(ncstats.raster_min_bytes)));
        assert(((cast(*void)(*instance.render_ns)) - cast(*void)(*instance)) == 56, "ncstats.render_ns has unexpected offset % instead of 56", ((cast(*void)(*instance.render_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.render_ns)) == 8, "ncstats.render_ns has unexpected size % instead of 8", size_of(type_of(ncstats.render_ns)));
        assert(((cast(*void)(*instance.render_max_ns)) - cast(*void)(*instance)) == 64, "ncstats.render_max_ns has unexpected offset % instead of 64", ((cast(*void)(*instance.render_max_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.render_max_ns)) == 8, "ncstats.render_max_ns has unexpected size % instead of 8", size_of(type_of(ncstats.render_max_ns)));
        assert(((cast(*void)(*instance.render_min_ns)) - cast(*void)(*instance)) == 72, "ncstats.render_min_ns has unexpected offset % instead of 72", ((cast(*void)(*instance.render_min_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.render_min_ns)) == 8, "ncstats.render_min_ns has unexpected size % instead of 8", size_of(type_of(ncstats.render_min_ns)));
        assert(((cast(*void)(*instance.raster_ns)) - cast(*void)(*instance)) == 80, "ncstats.raster_ns has unexpected offset % instead of 80", ((cast(*void)(*instance.raster_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.raster_ns)) == 8, "ncstats.raster_ns has unexpected size % instead of 8", size_of(type_of(ncstats.raster_ns)));
        assert(((cast(*void)(*instance.raster_max_ns)) - cast(*void)(*instance)) == 88, "ncstats.raster_max_ns has unexpected offset % instead of 88", ((cast(*void)(*instance.raster_max_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.raster_max_ns)) == 8, "ncstats.raster_max_ns has unexpected size % instead of 8", size_of(type_of(ncstats.raster_max_ns)));
        assert(((cast(*void)(*instance.raster_min_ns)) - cast(*void)(*instance)) == 96, "ncstats.raster_min_ns has unexpected offset % instead of 96", ((cast(*void)(*instance.raster_min_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.raster_min_ns)) == 8, "ncstats.raster_min_ns has unexpected size % instead of 8", size_of(type_of(ncstats.raster_min_ns)));
        assert(((cast(*void)(*instance.writeout_ns)) - cast(*void)(*instance)) == 104, "ncstats.writeout_ns has unexpected offset % instead of 104", ((cast(*void)(*instance.writeout_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.writeout_ns)) == 8, "ncstats.writeout_ns has unexpected size % instead of 8", size_of(type_of(ncstats.writeout_ns)));
        assert(((cast(*void)(*instance.writeout_max_ns)) - cast(*void)(*instance)) == 112, "ncstats.writeout_max_ns has unexpected offset % instead of 112", ((cast(*void)(*instance.writeout_max_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.writeout_max_ns)) == 8, "ncstats.writeout_max_ns has unexpected size % instead of 8", size_of(type_of(ncstats.writeout_max_ns)));
        assert(((cast(*void)(*instance.writeout_min_ns)) - cast(*void)(*instance)) == 120, "ncstats.writeout_min_ns has unexpected offset % instead of 120", ((cast(*void)(*instance.writeout_min_ns)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.writeout_min_ns)) == 8, "ncstats.writeout_min_ns has unexpected size % instead of 8", size_of(type_of(ncstats.writeout_min_ns)));
        assert(((cast(*void)(*instance.cellelisions)) - cast(*void)(*instance)) == 128, "ncstats.cellelisions has unexpected offset % instead of 128", ((cast(*void)(*instance.cellelisions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.cellelisions)) == 8, "ncstats.cellelisions has unexpected size % instead of 8", size_of(type_of(ncstats.cellelisions)));
        assert(((cast(*void)(*instance.cellemissions)) - cast(*void)(*instance)) == 136, "ncstats.cellemissions has unexpected offset % instead of 136", ((cast(*void)(*instance.cellemissions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.cellemissions)) == 8, "ncstats.cellemissions has unexpected size % instead of 8", size_of(type_of(ncstats.cellemissions)));
        assert(((cast(*void)(*instance.fgelisions)) - cast(*void)(*instance)) == 144, "ncstats.fgelisions has unexpected offset % instead of 144", ((cast(*void)(*instance.fgelisions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.fgelisions)) == 8, "ncstats.fgelisions has unexpected size % instead of 8", size_of(type_of(ncstats.fgelisions)));
        assert(((cast(*void)(*instance.fgemissions)) - cast(*void)(*instance)) == 152, "ncstats.fgemissions has unexpected offset % instead of 152", ((cast(*void)(*instance.fgemissions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.fgemissions)) == 8, "ncstats.fgemissions has unexpected size % instead of 8", size_of(type_of(ncstats.fgemissions)));
        assert(((cast(*void)(*instance.bgelisions)) - cast(*void)(*instance)) == 160, "ncstats.bgelisions has unexpected offset % instead of 160", ((cast(*void)(*instance.bgelisions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.bgelisions)) == 8, "ncstats.bgelisions has unexpected size % instead of 8", size_of(type_of(ncstats.bgelisions)));
        assert(((cast(*void)(*instance.bgemissions)) - cast(*void)(*instance)) == 168, "ncstats.bgemissions has unexpected offset % instead of 168", ((cast(*void)(*instance.bgemissions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.bgemissions)) == 8, "ncstats.bgemissions has unexpected size % instead of 8", size_of(type_of(ncstats.bgemissions)));
        assert(((cast(*void)(*instance.defaultelisions)) - cast(*void)(*instance)) == 176, "ncstats.defaultelisions has unexpected offset % instead of 176", ((cast(*void)(*instance.defaultelisions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.defaultelisions)) == 8, "ncstats.defaultelisions has unexpected size % instead of 8", size_of(type_of(ncstats.defaultelisions)));
        assert(((cast(*void)(*instance.defaultemissions)) - cast(*void)(*instance)) == 184, "ncstats.defaultemissions has unexpected offset % instead of 184", ((cast(*void)(*instance.defaultemissions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.defaultemissions)) == 8, "ncstats.defaultemissions has unexpected size % instead of 8", size_of(type_of(ncstats.defaultemissions)));
        assert(((cast(*void)(*instance.refreshes)) - cast(*void)(*instance)) == 192, "ncstats.refreshes has unexpected offset % instead of 192", ((cast(*void)(*instance.refreshes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.refreshes)) == 8, "ncstats.refreshes has unexpected size % instead of 8", size_of(type_of(ncstats.refreshes)));
        assert(((cast(*void)(*instance.sprixelemissions)) - cast(*void)(*instance)) == 200, "ncstats.sprixelemissions has unexpected offset % instead of 200", ((cast(*void)(*instance.sprixelemissions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.sprixelemissions)) == 8, "ncstats.sprixelemissions has unexpected size % instead of 8", size_of(type_of(ncstats.sprixelemissions)));
        assert(((cast(*void)(*instance.sprixelelisions)) - cast(*void)(*instance)) == 208, "ncstats.sprixelelisions has unexpected offset % instead of 208", ((cast(*void)(*instance.sprixelelisions)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.sprixelelisions)) == 8, "ncstats.sprixelelisions has unexpected size % instead of 8", size_of(type_of(ncstats.sprixelelisions)));
        assert(((cast(*void)(*instance.sprixelbytes)) - cast(*void)(*instance)) == 216, "ncstats.sprixelbytes has unexpected offset % instead of 216", ((cast(*void)(*instance.sprixelbytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.sprixelbytes)) == 8, "ncstats.sprixelbytes has unexpected size % instead of 8", size_of(type_of(ncstats.sprixelbytes)));
        assert(((cast(*void)(*instance.appsync_updates)) - cast(*void)(*instance)) == 224, "ncstats.appsync_updates has unexpected offset % instead of 224", ((cast(*void)(*instance.appsync_updates)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.appsync_updates)) == 8, "ncstats.appsync_updates has unexpected size % instead of 8", size_of(type_of(ncstats.appsync_updates)));
        assert(((cast(*void)(*instance.input_errors)) - cast(*void)(*instance)) == 232, "ncstats.input_errors has unexpected offset % instead of 232", ((cast(*void)(*instance.input_errors)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.input_errors)) == 8, "ncstats.input_errors has unexpected size % instead of 8", size_of(type_of(ncstats.input_errors)));
        assert(((cast(*void)(*instance.input_events)) - cast(*void)(*instance)) == 240, "ncstats.input_events has unexpected offset % instead of 240", ((cast(*void)(*instance.input_events)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.input_events)) == 8, "ncstats.input_events has unexpected size % instead of 8", size_of(type_of(ncstats.input_events)));
        assert(((cast(*void)(*instance.hpa_gratuitous)) - cast(*void)(*instance)) == 248, "ncstats.hpa_gratuitous has unexpected offset % instead of 248", ((cast(*void)(*instance.hpa_gratuitous)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.hpa_gratuitous)) == 8, "ncstats.hpa_gratuitous has unexpected size % instead of 8", size_of(type_of(ncstats.hpa_gratuitous)));
        assert(((cast(*void)(*instance.cell_geo_changes)) - cast(*void)(*instance)) == 256, "ncstats.cell_geo_changes has unexpected offset % instead of 256", ((cast(*void)(*instance.cell_geo_changes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.cell_geo_changes)) == 8, "ncstats.cell_geo_changes has unexpected size % instead of 8", size_of(type_of(ncstats.cell_geo_changes)));
        assert(((cast(*void)(*instance.pixel_geo_changes)) - cast(*void)(*instance)) == 264, "ncstats.pixel_geo_changes has unexpected offset % instead of 264", ((cast(*void)(*instance.pixel_geo_changes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.pixel_geo_changes)) == 8, "ncstats.pixel_geo_changes has unexpected size % instead of 8", size_of(type_of(ncstats.pixel_geo_changes)));
        assert(((cast(*void)(*instance.fbbytes)) - cast(*void)(*instance)) == 272, "ncstats.fbbytes has unexpected offset % instead of 272", ((cast(*void)(*instance.fbbytes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.fbbytes)) == 8, "ncstats.fbbytes has unexpected size % instead of 8", size_of(type_of(ncstats.fbbytes)));
        assert(((cast(*void)(*instance.planes)) - cast(*void)(*instance)) == 280, "ncstats.planes has unexpected offset % instead of 280", ((cast(*void)(*instance.planes)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncstats.planes)) == 4, "ncstats.planes has unexpected size % instead of 4", size_of(type_of(ncstats.planes)));
        assert(size_of(ncstats) == 288, "ncstats has size % instead of 288", size_of(ncstats));
    }

    {
        instance: ncvisual_options;
        assert(((cast(*void)(*instance.n)) - cast(*void)(*instance)) == 0, "ncvisual_options.n has unexpected offset % instead of 0", ((cast(*void)(*instance.n)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.n)) == 8, "ncvisual_options.n has unexpected size % instead of 8", size_of(type_of(ncvisual_options.n)));
        assert(((cast(*void)(*instance.scaling)) - cast(*void)(*instance)) == 8, "ncvisual_options.scaling has unexpected offset % instead of 8", ((cast(*void)(*instance.scaling)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.scaling)) == 4, "ncvisual_options.scaling has unexpected size % instead of 4", size_of(type_of(ncvisual_options.scaling)));
        assert(((cast(*void)(*instance.y)) - cast(*void)(*instance)) == 12, "ncvisual_options.y has unexpected offset % instead of 12", ((cast(*void)(*instance.y)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.y)) == 4, "ncvisual_options.y has unexpected size % instead of 4", size_of(type_of(ncvisual_options.y)));
        assert(((cast(*void)(*instance.x)) - cast(*void)(*instance)) == 16, "ncvisual_options.x has unexpected offset % instead of 16", ((cast(*void)(*instance.x)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.x)) == 4, "ncvisual_options.x has unexpected size % instead of 4", size_of(type_of(ncvisual_options.x)));
        assert(((cast(*void)(*instance.begy)) - cast(*void)(*instance)) == 20, "ncvisual_options.begy has unexpected offset % instead of 20", ((cast(*void)(*instance.begy)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.begy)) == 4, "ncvisual_options.begy has unexpected size % instead of 4", size_of(type_of(ncvisual_options.begy)));
        assert(((cast(*void)(*instance.begx)) - cast(*void)(*instance)) == 24, "ncvisual_options.begx has unexpected offset % instead of 24", ((cast(*void)(*instance.begx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.begx)) == 4, "ncvisual_options.begx has unexpected size % instead of 4", size_of(type_of(ncvisual_options.begx)));
        assert(((cast(*void)(*instance.leny)) - cast(*void)(*instance)) == 28, "ncvisual_options.leny has unexpected offset % instead of 28", ((cast(*void)(*instance.leny)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.leny)) == 4, "ncvisual_options.leny has unexpected size % instead of 4", size_of(type_of(ncvisual_options.leny)));
        assert(((cast(*void)(*instance.lenx)) - cast(*void)(*instance)) == 32, "ncvisual_options.lenx has unexpected offset % instead of 32", ((cast(*void)(*instance.lenx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.lenx)) == 4, "ncvisual_options.lenx has unexpected size % instead of 4", size_of(type_of(ncvisual_options.lenx)));
        assert(((cast(*void)(*instance.blitter)) - cast(*void)(*instance)) == 36, "ncvisual_options.blitter has unexpected offset % instead of 36", ((cast(*void)(*instance.blitter)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.blitter)) == 4, "ncvisual_options.blitter has unexpected size % instead of 4", size_of(type_of(ncvisual_options.blitter)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 40, "ncvisual_options.flags has unexpected offset % instead of 40", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.flags)) == 8, "ncvisual_options.flags has unexpected size % instead of 8", size_of(type_of(ncvisual_options.flags)));
        assert(((cast(*void)(*instance.transcolor)) - cast(*void)(*instance)) == 48, "ncvisual_options.transcolor has unexpected offset % instead of 48", ((cast(*void)(*instance.transcolor)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.transcolor)) == 4, "ncvisual_options.transcolor has unexpected size % instead of 4", size_of(type_of(ncvisual_options.transcolor)));
        assert(((cast(*void)(*instance.pxoffy)) - cast(*void)(*instance)) == 52, "ncvisual_options.pxoffy has unexpected offset % instead of 52", ((cast(*void)(*instance.pxoffy)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.pxoffy)) == 4, "ncvisual_options.pxoffy has unexpected size % instead of 4", size_of(type_of(ncvisual_options.pxoffy)));
        assert(((cast(*void)(*instance.pxoffx)) - cast(*void)(*instance)) == 56, "ncvisual_options.pxoffx has unexpected offset % instead of 56", ((cast(*void)(*instance.pxoffx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvisual_options.pxoffx)) == 4, "ncvisual_options.pxoffx has unexpected size % instead of 4", size_of(type_of(ncvisual_options.pxoffx)));
        assert(size_of(ncvisual_options) == 64, "ncvisual_options has size % instead of 64", size_of(ncvisual_options));
    }

    {
        instance: ncvgeom;
        assert(((cast(*void)(*instance.pixy)) - cast(*void)(*instance)) == 0, "ncvgeom.pixy has unexpected offset % instead of 0", ((cast(*void)(*instance.pixy)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.pixy)) == 4, "ncvgeom.pixy has unexpected size % instead of 4", size_of(type_of(ncvgeom.pixy)));
        assert(((cast(*void)(*instance.pixx)) - cast(*void)(*instance)) == 4, "ncvgeom.pixx has unexpected offset % instead of 4", ((cast(*void)(*instance.pixx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.pixx)) == 4, "ncvgeom.pixx has unexpected size % instead of 4", size_of(type_of(ncvgeom.pixx)));
        assert(((cast(*void)(*instance.cdimy)) - cast(*void)(*instance)) == 8, "ncvgeom.cdimy has unexpected offset % instead of 8", ((cast(*void)(*instance.cdimy)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.cdimy)) == 4, "ncvgeom.cdimy has unexpected size % instead of 4", size_of(type_of(ncvgeom.cdimy)));
        assert(((cast(*void)(*instance.cdimx)) - cast(*void)(*instance)) == 12, "ncvgeom.cdimx has unexpected offset % instead of 12", ((cast(*void)(*instance.cdimx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.cdimx)) == 4, "ncvgeom.cdimx has unexpected size % instead of 4", size_of(type_of(ncvgeom.cdimx)));
        assert(((cast(*void)(*instance.rpixy)) - cast(*void)(*instance)) == 16, "ncvgeom.rpixy has unexpected offset % instead of 16", ((cast(*void)(*instance.rpixy)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.rpixy)) == 4, "ncvgeom.rpixy has unexpected size % instead of 4", size_of(type_of(ncvgeom.rpixy)));
        assert(((cast(*void)(*instance.rpixx)) - cast(*void)(*instance)) == 20, "ncvgeom.rpixx has unexpected offset % instead of 20", ((cast(*void)(*instance.rpixx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.rpixx)) == 4, "ncvgeom.rpixx has unexpected size % instead of 4", size_of(type_of(ncvgeom.rpixx)));
        assert(((cast(*void)(*instance.rcelly)) - cast(*void)(*instance)) == 24, "ncvgeom.rcelly has unexpected offset % instead of 24", ((cast(*void)(*instance.rcelly)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.rcelly)) == 4, "ncvgeom.rcelly has unexpected size % instead of 4", size_of(type_of(ncvgeom.rcelly)));
        assert(((cast(*void)(*instance.rcellx)) - cast(*void)(*instance)) == 28, "ncvgeom.rcellx has unexpected offset % instead of 28", ((cast(*void)(*instance.rcellx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.rcellx)) == 4, "ncvgeom.rcellx has unexpected size % instead of 4", size_of(type_of(ncvgeom.rcellx)));
        assert(((cast(*void)(*instance.scaley)) - cast(*void)(*instance)) == 32, "ncvgeom.scaley has unexpected offset % instead of 32", ((cast(*void)(*instance.scaley)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.scaley)) == 4, "ncvgeom.scaley has unexpected size % instead of 4", size_of(type_of(ncvgeom.scaley)));
        assert(((cast(*void)(*instance.scalex)) - cast(*void)(*instance)) == 36, "ncvgeom.scalex has unexpected offset % instead of 36", ((cast(*void)(*instance.scalex)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.scalex)) == 4, "ncvgeom.scalex has unexpected size % instead of 4", size_of(type_of(ncvgeom.scalex)));
        assert(((cast(*void)(*instance.begy)) - cast(*void)(*instance)) == 40, "ncvgeom.begy has unexpected offset % instead of 40", ((cast(*void)(*instance.begy)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.begy)) == 4, "ncvgeom.begy has unexpected size % instead of 4", size_of(type_of(ncvgeom.begy)));
        assert(((cast(*void)(*instance.begx)) - cast(*void)(*instance)) == 44, "ncvgeom.begx has unexpected offset % instead of 44", ((cast(*void)(*instance.begx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.begx)) == 4, "ncvgeom.begx has unexpected size % instead of 4", size_of(type_of(ncvgeom.begx)));
        assert(((cast(*void)(*instance.leny)) - cast(*void)(*instance)) == 48, "ncvgeom.leny has unexpected offset % instead of 48", ((cast(*void)(*instance.leny)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.leny)) == 4, "ncvgeom.leny has unexpected size % instead of 4", size_of(type_of(ncvgeom.leny)));
        assert(((cast(*void)(*instance.lenx)) - cast(*void)(*instance)) == 52, "ncvgeom.lenx has unexpected offset % instead of 52", ((cast(*void)(*instance.lenx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.lenx)) == 4, "ncvgeom.lenx has unexpected size % instead of 4", size_of(type_of(ncvgeom.lenx)));
        assert(((cast(*void)(*instance.maxpixely)) - cast(*void)(*instance)) == 56, "ncvgeom.maxpixely has unexpected offset % instead of 56", ((cast(*void)(*instance.maxpixely)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.maxpixely)) == 4, "ncvgeom.maxpixely has unexpected size % instead of 4", size_of(type_of(ncvgeom.maxpixely)));
        assert(((cast(*void)(*instance.maxpixelx)) - cast(*void)(*instance)) == 60, "ncvgeom.maxpixelx has unexpected offset % instead of 60", ((cast(*void)(*instance.maxpixelx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.maxpixelx)) == 4, "ncvgeom.maxpixelx has unexpected size % instead of 4", size_of(type_of(ncvgeom.maxpixelx)));
        assert(((cast(*void)(*instance.blitter)) - cast(*void)(*instance)) == 64, "ncvgeom.blitter has unexpected offset % instead of 64", ((cast(*void)(*instance.blitter)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncvgeom.blitter)) == 4, "ncvgeom.blitter has unexpected size % instead of 4", size_of(type_of(ncvgeom.blitter)));
        assert(size_of(ncvgeom) == 68, "ncvgeom has size % instead of 68", size_of(ncvgeom));
    }

    {
        instance: ncreel_options;
        assert(((cast(*void)(*instance.bordermask)) - cast(*void)(*instance)) == 0, "ncreel_options.bordermask has unexpected offset % instead of 0", ((cast(*void)(*instance.bordermask)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreel_options.bordermask)) == 4, "ncreel_options.bordermask has unexpected size % instead of 4", size_of(type_of(ncreel_options.bordermask)));
        assert(((cast(*void)(*instance.borderchan)) - cast(*void)(*instance)) == 8, "ncreel_options.borderchan has unexpected offset % instead of 8", ((cast(*void)(*instance.borderchan)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreel_options.borderchan)) == 8, "ncreel_options.borderchan has unexpected size % instead of 8", size_of(type_of(ncreel_options.borderchan)));
        assert(((cast(*void)(*instance.tabletmask)) - cast(*void)(*instance)) == 16, "ncreel_options.tabletmask has unexpected offset % instead of 16", ((cast(*void)(*instance.tabletmask)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreel_options.tabletmask)) == 4, "ncreel_options.tabletmask has unexpected size % instead of 4", size_of(type_of(ncreel_options.tabletmask)));
        assert(((cast(*void)(*instance.tabletchan)) - cast(*void)(*instance)) == 24, "ncreel_options.tabletchan has unexpected offset % instead of 24", ((cast(*void)(*instance.tabletchan)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreel_options.tabletchan)) == 8, "ncreel_options.tabletchan has unexpected size % instead of 8", size_of(type_of(ncreel_options.tabletchan)));
        assert(((cast(*void)(*instance.focusedchan)) - cast(*void)(*instance)) == 32, "ncreel_options.focusedchan has unexpected offset % instead of 32", ((cast(*void)(*instance.focusedchan)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreel_options.focusedchan)) == 8, "ncreel_options.focusedchan has unexpected size % instead of 8", size_of(type_of(ncreel_options.focusedchan)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 40, "ncreel_options.flags has unexpected offset % instead of 40", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreel_options.flags)) == 8, "ncreel_options.flags has unexpected size % instead of 8", size_of(type_of(ncreel_options.flags)));
        assert(size_of(ncreel_options) == 48, "ncreel_options has size % instead of 48", size_of(ncreel_options));
    }

    {
        instance: ncselector_item;
        assert(((cast(*void)(*instance.option)) - cast(*void)(*instance)) == 0, "ncselector_item.option has unexpected offset % instead of 0", ((cast(*void)(*instance.option)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_item.option)) == 8, "ncselector_item.option has unexpected size % instead of 8", size_of(type_of(ncselector_item.option)));
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 8, "ncselector_item.desc has unexpected offset % instead of 8", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_item.desc)) == 8, "ncselector_item.desc has unexpected size % instead of 8", size_of(type_of(ncselector_item.desc)));
        assert(size_of(ncselector_item) == 16, "ncselector_item has size % instead of 16", size_of(ncselector_item));
    }

    {
        instance: ncselector_options;
        assert(((cast(*void)(*instance.title)) - cast(*void)(*instance)) == 0, "ncselector_options.title has unexpected offset % instead of 0", ((cast(*void)(*instance.title)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.title)) == 8, "ncselector_options.title has unexpected size % instead of 8", size_of(type_of(ncselector_options.title)));
        assert(((cast(*void)(*instance.secondary)) - cast(*void)(*instance)) == 8, "ncselector_options.secondary has unexpected offset % instead of 8", ((cast(*void)(*instance.secondary)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.secondary)) == 8, "ncselector_options.secondary has unexpected size % instead of 8", size_of(type_of(ncselector_options.secondary)));
        assert(((cast(*void)(*instance.footer)) - cast(*void)(*instance)) == 16, "ncselector_options.footer has unexpected offset % instead of 16", ((cast(*void)(*instance.footer)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.footer)) == 8, "ncselector_options.footer has unexpected size % instead of 8", size_of(type_of(ncselector_options.footer)));
        assert(((cast(*void)(*instance.items)) - cast(*void)(*instance)) == 24, "ncselector_options.items has unexpected offset % instead of 24", ((cast(*void)(*instance.items)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.items)) == 8, "ncselector_options.items has unexpected size % instead of 8", size_of(type_of(ncselector_options.items)));
        assert(((cast(*void)(*instance.defidx)) - cast(*void)(*instance)) == 32, "ncselector_options.defidx has unexpected offset % instead of 32", ((cast(*void)(*instance.defidx)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.defidx)) == 4, "ncselector_options.defidx has unexpected size % instead of 4", size_of(type_of(ncselector_options.defidx)));
        assert(((cast(*void)(*instance.maxdisplay)) - cast(*void)(*instance)) == 36, "ncselector_options.maxdisplay has unexpected offset % instead of 36", ((cast(*void)(*instance.maxdisplay)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.maxdisplay)) == 4, "ncselector_options.maxdisplay has unexpected size % instead of 4", size_of(type_of(ncselector_options.maxdisplay)));
        assert(((cast(*void)(*instance.opchannels)) - cast(*void)(*instance)) == 40, "ncselector_options.opchannels has unexpected offset % instead of 40", ((cast(*void)(*instance.opchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.opchannels)) == 8, "ncselector_options.opchannels has unexpected size % instead of 8", size_of(type_of(ncselector_options.opchannels)));
        assert(((cast(*void)(*instance.descchannels)) - cast(*void)(*instance)) == 48, "ncselector_options.descchannels has unexpected offset % instead of 48", ((cast(*void)(*instance.descchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.descchannels)) == 8, "ncselector_options.descchannels has unexpected size % instead of 8", size_of(type_of(ncselector_options.descchannels)));
        assert(((cast(*void)(*instance.titlechannels)) - cast(*void)(*instance)) == 56, "ncselector_options.titlechannels has unexpected offset % instead of 56", ((cast(*void)(*instance.titlechannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.titlechannels)) == 8, "ncselector_options.titlechannels has unexpected size % instead of 8", size_of(type_of(ncselector_options.titlechannels)));
        assert(((cast(*void)(*instance.footchannels)) - cast(*void)(*instance)) == 64, "ncselector_options.footchannels has unexpected offset % instead of 64", ((cast(*void)(*instance.footchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.footchannels)) == 8, "ncselector_options.footchannels has unexpected size % instead of 8", size_of(type_of(ncselector_options.footchannels)));
        assert(((cast(*void)(*instance.boxchannels)) - cast(*void)(*instance)) == 72, "ncselector_options.boxchannels has unexpected offset % instead of 72", ((cast(*void)(*instance.boxchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.boxchannels)) == 8, "ncselector_options.boxchannels has unexpected size % instead of 8", size_of(type_of(ncselector_options.boxchannels)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 80, "ncselector_options.flags has unexpected offset % instead of 80", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncselector_options.flags)) == 8, "ncselector_options.flags has unexpected size % instead of 8", size_of(type_of(ncselector_options.flags)));
        assert(size_of(ncselector_options) == 88, "ncselector_options has size % instead of 88", size_of(ncselector_options));
    }

    {
        instance: ncmselector_item;
        assert(((cast(*void)(*instance.option)) - cast(*void)(*instance)) == 0, "ncmselector_item.option has unexpected offset % instead of 0", ((cast(*void)(*instance.option)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmselector_item.option)) == 8, "ncmselector_item.option has unexpected size % instead of 8", size_of(type_of(ncmselector_item.option)));
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 8, "ncmselector_item.desc has unexpected offset % instead of 8", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmselector_item.desc)) == 8, "ncmselector_item.desc has unexpected size % instead of 8", size_of(type_of(ncmselector_item.desc)));
        assert(((cast(*void)(*instance.selected)) - cast(*void)(*instance)) == 16, "ncmselector_item.selected has unexpected offset % instead of 16", ((cast(*void)(*instance.selected)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmselector_item.selected)) == 1, "ncmselector_item.selected has unexpected size % instead of 1", size_of(type_of(ncmselector_item.selected)));
        assert(size_of(ncmselector_item) == 24, "ncmselector_item has size % instead of 24", size_of(ncmselector_item));
    }

    {
        instance: ncmultiselector_options;
        assert(((cast(*void)(*instance.title)) - cast(*void)(*instance)) == 0, "ncmultiselector_options.title has unexpected offset % instead of 0", ((cast(*void)(*instance.title)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.title)) == 8, "ncmultiselector_options.title has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.title)));
        assert(((cast(*void)(*instance.secondary)) - cast(*void)(*instance)) == 8, "ncmultiselector_options.secondary has unexpected offset % instead of 8", ((cast(*void)(*instance.secondary)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.secondary)) == 8, "ncmultiselector_options.secondary has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.secondary)));
        assert(((cast(*void)(*instance.footer)) - cast(*void)(*instance)) == 16, "ncmultiselector_options.footer has unexpected offset % instead of 16", ((cast(*void)(*instance.footer)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.footer)) == 8, "ncmultiselector_options.footer has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.footer)));
        assert(((cast(*void)(*instance.items)) - cast(*void)(*instance)) == 24, "ncmultiselector_options.items has unexpected offset % instead of 24", ((cast(*void)(*instance.items)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.items)) == 8, "ncmultiselector_options.items has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.items)));
        assert(((cast(*void)(*instance.maxdisplay)) - cast(*void)(*instance)) == 32, "ncmultiselector_options.maxdisplay has unexpected offset % instead of 32", ((cast(*void)(*instance.maxdisplay)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.maxdisplay)) == 4, "ncmultiselector_options.maxdisplay has unexpected size % instead of 4", size_of(type_of(ncmultiselector_options.maxdisplay)));
        assert(((cast(*void)(*instance.opchannels)) - cast(*void)(*instance)) == 40, "ncmultiselector_options.opchannels has unexpected offset % instead of 40", ((cast(*void)(*instance.opchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.opchannels)) == 8, "ncmultiselector_options.opchannels has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.opchannels)));
        assert(((cast(*void)(*instance.descchannels)) - cast(*void)(*instance)) == 48, "ncmultiselector_options.descchannels has unexpected offset % instead of 48", ((cast(*void)(*instance.descchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.descchannels)) == 8, "ncmultiselector_options.descchannels has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.descchannels)));
        assert(((cast(*void)(*instance.titlechannels)) - cast(*void)(*instance)) == 56, "ncmultiselector_options.titlechannels has unexpected offset % instead of 56", ((cast(*void)(*instance.titlechannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.titlechannels)) == 8, "ncmultiselector_options.titlechannels has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.titlechannels)));
        assert(((cast(*void)(*instance.footchannels)) - cast(*void)(*instance)) == 64, "ncmultiselector_options.footchannels has unexpected offset % instead of 64", ((cast(*void)(*instance.footchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.footchannels)) == 8, "ncmultiselector_options.footchannels has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.footchannels)));
        assert(((cast(*void)(*instance.boxchannels)) - cast(*void)(*instance)) == 72, "ncmultiselector_options.boxchannels has unexpected offset % instead of 72", ((cast(*void)(*instance.boxchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.boxchannels)) == 8, "ncmultiselector_options.boxchannels has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.boxchannels)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 80, "ncmultiselector_options.flags has unexpected offset % instead of 80", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmultiselector_options.flags)) == 8, "ncmultiselector_options.flags has unexpected size % instead of 8", size_of(type_of(ncmultiselector_options.flags)));
        assert(size_of(ncmultiselector_options) == 88, "ncmultiselector_options has size % instead of 88", size_of(ncmultiselector_options));
    }

    {
        instance: nctree_item;
        assert(((cast(*void)(*instance.curry)) - cast(*void)(*instance)) == 0, "nctree_item.curry has unexpected offset % instead of 0", ((cast(*void)(*instance.curry)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_item.curry)) == 8, "nctree_item.curry has unexpected size % instead of 8", size_of(type_of(nctree_item.curry)));
        assert(((cast(*void)(*instance.subs)) - cast(*void)(*instance)) == 8, "nctree_item.subs has unexpected offset % instead of 8", ((cast(*void)(*instance.subs)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_item.subs)) == 8, "nctree_item.subs has unexpected size % instead of 8", size_of(type_of(nctree_item.subs)));
        assert(((cast(*void)(*instance.subcount)) - cast(*void)(*instance)) == 16, "nctree_item.subcount has unexpected offset % instead of 16", ((cast(*void)(*instance.subcount)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_item.subcount)) == 4, "nctree_item.subcount has unexpected size % instead of 4", size_of(type_of(nctree_item.subcount)));
        assert(size_of(nctree_item) == 24, "nctree_item has size % instead of 24", size_of(nctree_item));
    }

    {
        instance: nctree_options;
        assert(((cast(*void)(*instance.items)) - cast(*void)(*instance)) == 0, "nctree_options.items has unexpected offset % instead of 0", ((cast(*void)(*instance.items)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_options.items)) == 8, "nctree_options.items has unexpected size % instead of 8", size_of(type_of(nctree_options.items)));
        assert(((cast(*void)(*instance.count)) - cast(*void)(*instance)) == 8, "nctree_options.count has unexpected offset % instead of 8", ((cast(*void)(*instance.count)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_options.count)) == 4, "nctree_options.count has unexpected size % instead of 4", size_of(type_of(nctree_options.count)));
        assert(((cast(*void)(*instance.nctreecb)) - cast(*void)(*instance)) == 16, "nctree_options.nctreecb has unexpected offset % instead of 16", ((cast(*void)(*instance.nctreecb)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_options.nctreecb)) == 8, "nctree_options.nctreecb has unexpected size % instead of 8", size_of(type_of(nctree_options.nctreecb)));
        assert(((cast(*void)(*instance.indentcols)) - cast(*void)(*instance)) == 24, "nctree_options.indentcols has unexpected offset % instead of 24", ((cast(*void)(*instance.indentcols)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_options.indentcols)) == 4, "nctree_options.indentcols has unexpected size % instead of 4", size_of(type_of(nctree_options.indentcols)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 32, "nctree_options.flags has unexpected offset % instead of 32", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctree_options.flags)) == 8, "nctree_options.flags has unexpected size % instead of 8", size_of(type_of(nctree_options.flags)));
        assert(size_of(nctree_options) == 40, "nctree_options has size % instead of 40", size_of(nctree_options));
    }

    {
        instance: ncmenu_item;
        assert(((cast(*void)(*instance.desc)) - cast(*void)(*instance)) == 0, "ncmenu_item.desc has unexpected offset % instead of 0", ((cast(*void)(*instance.desc)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_item.desc)) == 8, "ncmenu_item.desc has unexpected size % instead of 8", size_of(type_of(ncmenu_item.desc)));
        assert(((cast(*void)(*instance.shortcut)) - cast(*void)(*instance)) == 8, "ncmenu_item.shortcut has unexpected offset % instead of 8", ((cast(*void)(*instance.shortcut)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_item.shortcut)) == 52, "ncmenu_item.shortcut has unexpected size % instead of 52", size_of(type_of(ncmenu_item.shortcut)));
        assert(size_of(ncmenu_item) == 64, "ncmenu_item has size % instead of 64", size_of(ncmenu_item));
    }

    {
        instance: ncmenu_section;
        assert(((cast(*void)(*instance.name)) - cast(*void)(*instance)) == 0, "ncmenu_section.name has unexpected offset % instead of 0", ((cast(*void)(*instance.name)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_section.name)) == 8, "ncmenu_section.name has unexpected size % instead of 8", size_of(type_of(ncmenu_section.name)));
        assert(((cast(*void)(*instance.itemcount)) - cast(*void)(*instance)) == 8, "ncmenu_section.itemcount has unexpected offset % instead of 8", ((cast(*void)(*instance.itemcount)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_section.itemcount)) == 4, "ncmenu_section.itemcount has unexpected size % instead of 4", size_of(type_of(ncmenu_section.itemcount)));
        assert(((cast(*void)(*instance.items)) - cast(*void)(*instance)) == 16, "ncmenu_section.items has unexpected offset % instead of 16", ((cast(*void)(*instance.items)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_section.items)) == 8, "ncmenu_section.items has unexpected size % instead of 8", size_of(type_of(ncmenu_section.items)));
        assert(((cast(*void)(*instance.shortcut)) - cast(*void)(*instance)) == 24, "ncmenu_section.shortcut has unexpected offset % instead of 24", ((cast(*void)(*instance.shortcut)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_section.shortcut)) == 52, "ncmenu_section.shortcut has unexpected size % instead of 52", size_of(type_of(ncmenu_section.shortcut)));
        assert(size_of(ncmenu_section) == 80, "ncmenu_section has size % instead of 80", size_of(ncmenu_section));
    }

    {
        instance: ncmenu_options;
        assert(((cast(*void)(*instance.sections)) - cast(*void)(*instance)) == 0, "ncmenu_options.sections has unexpected offset % instead of 0", ((cast(*void)(*instance.sections)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_options.sections)) == 8, "ncmenu_options.sections has unexpected size % instead of 8", size_of(type_of(ncmenu_options.sections)));
        assert(((cast(*void)(*instance.sectioncount)) - cast(*void)(*instance)) == 8, "ncmenu_options.sectioncount has unexpected offset % instead of 8", ((cast(*void)(*instance.sectioncount)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_options.sectioncount)) == 4, "ncmenu_options.sectioncount has unexpected size % instead of 4", size_of(type_of(ncmenu_options.sectioncount)));
        assert(((cast(*void)(*instance.headerchannels)) - cast(*void)(*instance)) == 16, "ncmenu_options.headerchannels has unexpected offset % instead of 16", ((cast(*void)(*instance.headerchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_options.headerchannels)) == 8, "ncmenu_options.headerchannels has unexpected size % instead of 8", size_of(type_of(ncmenu_options.headerchannels)));
        assert(((cast(*void)(*instance.sectionchannels)) - cast(*void)(*instance)) == 24, "ncmenu_options.sectionchannels has unexpected offset % instead of 24", ((cast(*void)(*instance.sectionchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_options.sectionchannels)) == 8, "ncmenu_options.sectionchannels has unexpected size % instead of 8", size_of(type_of(ncmenu_options.sectionchannels)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 32, "ncmenu_options.flags has unexpected offset % instead of 32", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncmenu_options.flags)) == 8, "ncmenu_options.flags has unexpected size % instead of 8", size_of(type_of(ncmenu_options.flags)));
        assert(size_of(ncmenu_options) == 40, "ncmenu_options has size % instead of 40", size_of(ncmenu_options));
    }

    {
        instance: ncprogbar_options;
        assert(((cast(*void)(*instance.ulchannel)) - cast(*void)(*instance)) == 0, "ncprogbar_options.ulchannel has unexpected offset % instead of 0", ((cast(*void)(*instance.ulchannel)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncprogbar_options.ulchannel)) == 4, "ncprogbar_options.ulchannel has unexpected size % instead of 4", size_of(type_of(ncprogbar_options.ulchannel)));
        assert(((cast(*void)(*instance.urchannel)) - cast(*void)(*instance)) == 4, "ncprogbar_options.urchannel has unexpected offset % instead of 4", ((cast(*void)(*instance.urchannel)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncprogbar_options.urchannel)) == 4, "ncprogbar_options.urchannel has unexpected size % instead of 4", size_of(type_of(ncprogbar_options.urchannel)));
        assert(((cast(*void)(*instance.blchannel)) - cast(*void)(*instance)) == 8, "ncprogbar_options.blchannel has unexpected offset % instead of 8", ((cast(*void)(*instance.blchannel)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncprogbar_options.blchannel)) == 4, "ncprogbar_options.blchannel has unexpected size % instead of 4", size_of(type_of(ncprogbar_options.blchannel)));
        assert(((cast(*void)(*instance.brchannel)) - cast(*void)(*instance)) == 12, "ncprogbar_options.brchannel has unexpected offset % instead of 12", ((cast(*void)(*instance.brchannel)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncprogbar_options.brchannel)) == 4, "ncprogbar_options.brchannel has unexpected size % instead of 4", size_of(type_of(ncprogbar_options.brchannel)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 16, "ncprogbar_options.flags has unexpected offset % instead of 16", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncprogbar_options.flags)) == 8, "ncprogbar_options.flags has unexpected size % instead of 8", size_of(type_of(ncprogbar_options.flags)));
        assert(size_of(ncprogbar_options) == 24, "ncprogbar_options has size % instead of 24", size_of(ncprogbar_options));
    }

    {
        instance: nctabbed_options;
        assert(((cast(*void)(*instance.selchan)) - cast(*void)(*instance)) == 0, "nctabbed_options.selchan has unexpected offset % instead of 0", ((cast(*void)(*instance.selchan)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctabbed_options.selchan)) == 8, "nctabbed_options.selchan has unexpected size % instead of 8", size_of(type_of(nctabbed_options.selchan)));
        assert(((cast(*void)(*instance.hdrchan)) - cast(*void)(*instance)) == 8, "nctabbed_options.hdrchan has unexpected offset % instead of 8", ((cast(*void)(*instance.hdrchan)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctabbed_options.hdrchan)) == 8, "nctabbed_options.hdrchan has unexpected size % instead of 8", size_of(type_of(nctabbed_options.hdrchan)));
        assert(((cast(*void)(*instance.sepchan)) - cast(*void)(*instance)) == 16, "nctabbed_options.sepchan has unexpected offset % instead of 16", ((cast(*void)(*instance.sepchan)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctabbed_options.sepchan)) == 8, "nctabbed_options.sepchan has unexpected size % instead of 8", size_of(type_of(nctabbed_options.sepchan)));
        assert(((cast(*void)(*instance.separator)) - cast(*void)(*instance)) == 24, "nctabbed_options.separator has unexpected offset % instead of 24", ((cast(*void)(*instance.separator)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctabbed_options.separator)) == 8, "nctabbed_options.separator has unexpected size % instead of 8", size_of(type_of(nctabbed_options.separator)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 32, "nctabbed_options.flags has unexpected offset % instead of 32", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(nctabbed_options.flags)) == 8, "nctabbed_options.flags has unexpected size % instead of 8", size_of(type_of(nctabbed_options.flags)));
        assert(size_of(nctabbed_options) == 40, "nctabbed_options has size % instead of 40", size_of(nctabbed_options));
    }

    {
        instance: ncplot_options;
        assert(((cast(*void)(*instance.maxchannels)) - cast(*void)(*instance)) == 0, "ncplot_options.maxchannels has unexpected offset % instead of 0", ((cast(*void)(*instance.maxchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplot_options.maxchannels)) == 8, "ncplot_options.maxchannels has unexpected size % instead of 8", size_of(type_of(ncplot_options.maxchannels)));
        assert(((cast(*void)(*instance.minchannels)) - cast(*void)(*instance)) == 8, "ncplot_options.minchannels has unexpected offset % instead of 8", ((cast(*void)(*instance.minchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplot_options.minchannels)) == 8, "ncplot_options.minchannels has unexpected size % instead of 8", size_of(type_of(ncplot_options.minchannels)));
        assert(((cast(*void)(*instance.legendstyle)) - cast(*void)(*instance)) == 16, "ncplot_options.legendstyle has unexpected offset % instead of 16", ((cast(*void)(*instance.legendstyle)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplot_options.legendstyle)) == 2, "ncplot_options.legendstyle has unexpected size % instead of 2", size_of(type_of(ncplot_options.legendstyle)));
        assert(((cast(*void)(*instance.gridtype)) - cast(*void)(*instance)) == 20, "ncplot_options.gridtype has unexpected offset % instead of 20", ((cast(*void)(*instance.gridtype)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplot_options.gridtype)) == 4, "ncplot_options.gridtype has unexpected size % instead of 4", size_of(type_of(ncplot_options.gridtype)));
        assert(((cast(*void)(*instance.rangex)) - cast(*void)(*instance)) == 24, "ncplot_options.rangex has unexpected offset % instead of 24", ((cast(*void)(*instance.rangex)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplot_options.rangex)) == 4, "ncplot_options.rangex has unexpected size % instead of 4", size_of(type_of(ncplot_options.rangex)));
        assert(((cast(*void)(*instance.title)) - cast(*void)(*instance)) == 32, "ncplot_options.title has unexpected offset % instead of 32", ((cast(*void)(*instance.title)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplot_options.title)) == 8, "ncplot_options.title has unexpected size % instead of 8", size_of(type_of(ncplot_options.title)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 40, "ncplot_options.flags has unexpected offset % instead of 40", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncplot_options.flags)) == 8, "ncplot_options.flags has unexpected size % instead of 8", size_of(type_of(ncplot_options.flags)));
        assert(size_of(ncplot_options) == 48, "ncplot_options has size % instead of 48", size_of(ncplot_options));
    }

    {
        instance: ncfdplane_options;
        assert(((cast(*void)(*instance.curry)) - cast(*void)(*instance)) == 0, "ncfdplane_options.curry has unexpected offset % instead of 0", ((cast(*void)(*instance.curry)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncfdplane_options.curry)) == 8, "ncfdplane_options.curry has unexpected size % instead of 8", size_of(type_of(ncfdplane_options.curry)));
        assert(((cast(*void)(*instance.follow)) - cast(*void)(*instance)) == 8, "ncfdplane_options.follow has unexpected offset % instead of 8", ((cast(*void)(*instance.follow)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncfdplane_options.follow)) == 1, "ncfdplane_options.follow has unexpected size % instead of 1", size_of(type_of(ncfdplane_options.follow)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 16, "ncfdplane_options.flags has unexpected offset % instead of 16", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncfdplane_options.flags)) == 8, "ncfdplane_options.flags has unexpected size % instead of 8", size_of(type_of(ncfdplane_options.flags)));
        assert(size_of(ncfdplane_options) == 24, "ncfdplane_options has size % instead of 24", size_of(ncfdplane_options));
    }

    {
        instance: ncsubproc_options;
        assert(((cast(*void)(*instance.curry)) - cast(*void)(*instance)) == 0, "ncsubproc_options.curry has unexpected offset % instead of 0", ((cast(*void)(*instance.curry)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncsubproc_options.curry)) == 8, "ncsubproc_options.curry has unexpected size % instead of 8", size_of(type_of(ncsubproc_options.curry)));
        assert(((cast(*void)(*instance.restart_period)) - cast(*void)(*instance)) == 8, "ncsubproc_options.restart_period has unexpected offset % instead of 8", ((cast(*void)(*instance.restart_period)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncsubproc_options.restart_period)) == 8, "ncsubproc_options.restart_period has unexpected size % instead of 8", size_of(type_of(ncsubproc_options.restart_period)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 16, "ncsubproc_options.flags has unexpected offset % instead of 16", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncsubproc_options.flags)) == 8, "ncsubproc_options.flags has unexpected size % instead of 8", size_of(type_of(ncsubproc_options.flags)));
        assert(size_of(ncsubproc_options) == 24, "ncsubproc_options has size % instead of 24", size_of(ncsubproc_options));
    }

    {
        instance: ncreader_options;
        assert(((cast(*void)(*instance.tchannels)) - cast(*void)(*instance)) == 0, "ncreader_options.tchannels has unexpected offset % instead of 0", ((cast(*void)(*instance.tchannels)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreader_options.tchannels)) == 8, "ncreader_options.tchannels has unexpected size % instead of 8", size_of(type_of(ncreader_options.tchannels)));
        assert(((cast(*void)(*instance.tattrword)) - cast(*void)(*instance)) == 8, "ncreader_options.tattrword has unexpected offset % instead of 8", ((cast(*void)(*instance.tattrword)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreader_options.tattrword)) == 4, "ncreader_options.tattrword has unexpected size % instead of 4", size_of(type_of(ncreader_options.tattrword)));
        assert(((cast(*void)(*instance.flags)) - cast(*void)(*instance)) == 16, "ncreader_options.flags has unexpected offset % instead of 16", ((cast(*void)(*instance.flags)) - cast(*void)(*instance)));
        assert(size_of(type_of(ncreader_options.flags)) == 8, "ncreader_options.flags has unexpected size % instead of 8", size_of(type_of(ncreader_options.flags)));
        assert(size_of(ncreader_options) == 24, "ncreader_options has size % instead of 24", size_of(ncreader_options));
    }
}

FILE :: void;
#if OS == .LINUX {
    libnotcurses        :: #library,no_dll "linux/libnotcurses";
    libnotcurses_ffi    :: #library,no_dll "linux/libnotcurses-ffi";
} else #if OS == .MACOS {
    libnotcurses        :: #library,no_dll "macos/libnotcurses";
    libnotcurses_ffi    :: #library,no_dll "macos/libnotcurses-ffi";
}
