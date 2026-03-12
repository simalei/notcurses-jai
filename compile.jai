#if OS == .WINDOWS {
    #assert false "Your OS is not supported.";
}

DEBUG :: false;

#run,stallable {
    #import "Compiler";
    set_build_options_dc(.{do_output=false});
    #assert compile(DEBUG) "Error occurred while compiling.";
}


SOURCE_PATH :: "notcurses";

generate_version_header :: (major: int, minor: int, patch: int, tweak: int) {
    HEADER_TEMPLATE :: #string EOF
#ifndef NOTCURSES_VERSION_HEADER
#define NOTCURSES_VERSION_HEADER

#define NOTCURSES_VERNUM_MAJOR %
#define NOTCURSES_VERNUM_MINOR %
#define NOTCURSES_VERNUM_PATCH %
#define NOTCURSES_VERNUM_TWEAK %

#define NOTCURSES_VERSION_COMPARABLE(major, minor, patch) \
  (((major) << 16u) + ((minor) << 8u) + (patch))

#define NOTCURSES_VERNUM_ORDERED NOTCURSES_VERSION_COMPARABLE( \
  NOTCURSES_VERNUM_MAJOR, NOTCURSES_VERNUM_MINOR, NOTCURSES_VERNUM_PATCH)

#define NOTCURSES_VERSION_MAJOR "%"
#define NOTCURSES_VERSION_MINOR "%"
#define NOTCURSES_VERSION_PATCH "%"
#define NOTCURSES_VERSION_TWEAK "%"

#endif
    EOF

    header := tprint(HEADER_TEMPLATE, major, minor, patch, tweak, major, minor, patch, tweak);
    write_entire_file(tprint("%/src/lib/version.h", SOURCE_PATH), header);
}

generate_builddef_header :: () {
    // @Fix: Generate this header properly.
    HEADER_TEMPLATE :: #string EOF
#define NOTCURSES_SHARE "%/%"
#define USE_FFMPEG false
    EOF
    header := tprint(HEADER_TEMPLATE, #filepath, SOURCE_PATH);
    write_entire_file(tprint("%/src/lib/builddef.h", SOURCE_PATH), header);
}

compile :: (debug: bool) -> bool {
    source_files: [..] string;
    
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/automaton.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/banner.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/blit.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/debug.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/direct.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/egcpool.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/fade.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/fd.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/fill.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/gpm.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/in.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/kitty.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/layout.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/linux.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/menu.c")); 
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/metric.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/mice.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/notcurses.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/plot.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/progbar.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/reader.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/reel.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/render.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/selector.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/sixel.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/sprite.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/stats.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/tabbed.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/termdesc.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/tree.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/unixsig.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/util.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/visual.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/lib/windows.c"));
    array_add(*source_files, tprint("%/%", SOURCE_PATH, "src/compat/compat.c"));

    generate_version_header(3, 0, 17, 0);
    generate_builddef_header();

    extra_args: [..] string;
    array_add(*extra_args, tprint("-I%/src/lib/", SOURCE_PATH), tprint("-I%/src/", SOURCE_PATH), tprint("-I%/include/", SOURCE_PATH));

    success := true;
    #if OS == .LINUX {
        array_add(*extra_args, "-D_XOPEN_SOURCE=700", "-D_DEFAULT_SOURCE", "-D_GNU_SOURCE", "-DUSE_DEFLATE=off");
        
	make_directory_if_it_does_not_exist("linux");
        success &&= build_cpp_static_lib("linux/libnotcurses", ..source_files, extra = extra_args, debug = debug);
        array_add(*extra_args, "-DNOTCURSES_FFI");
        success &&= build_cpp_static_lib("linux/libnotcurses-ffi", tprint("%/src/libffi/ffi.c", SOURCE_PATH), extra = extra_args, debug = debug);
    } else #if OS == .MACOS {
	// @Fix Apparently, libunistring doesn't support pkg-config
	// This is the best we can do for now
	array_add(*extra_args, "-I/opt/homebrew/Cellar/libunistring/1.4.2/include");

	make_directory_if_it_does_not_exist("macos");
        success &&= build_cpp_static_lib("macos/libnotcurses", ..source_files, extra = extra_args, debug = debug);
        array_add(*extra_args, "-DNOTCURSES_FFI");
        success &&= build_cpp_static_lib("macos/libnotcurses-ffi", tprint("%/src/libffi/ffi.c", SOURCE_PATH), extra = extra_args, debug = debug);
    }

    return success;
}

#import "Basic";
#import "File";
#import "BuildCpp";
