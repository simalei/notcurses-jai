#if OS == .WINDOWS {
    #assert false "Your OS is not supported.";
}

#run,stallable #assert generate() "Error occurred while generating bindings.";

generate :: () -> bool {
    SOURCE_PATH :: "notcurses";
    opts: Generate_Bindings_Options;

    {
        using opts;
        array_add(*libnames, "libnotcurses", "libnotcurses-ffi");
       
        array_add(*source_files, tprint("%/%", SOURCE_PATH, "include/notcurses/notcurses.h"));
        array_add(*source_files, tprint("%/%", SOURCE_PATH, "include/notcurses/direct.h"));
        array_add(*source_files, tprint("%/%", SOURCE_PATH, "include/notcurses/nckeys.h"));
        array_add(*source_files, tprint("%/%", SOURCE_PATH, "include/notcurses/ncport.h")); 
        array_add(*source_files, tprint("%/%", SOURCE_PATH, "include/notcurses/ncseqs.h"));
	
	#if OS == {
	    case .LINUX;
                array_add(*libpaths, "linux/");
	    case .MACOS;
                //array_add(*libpaths, "/opt/homebrew/Cellar/notcurses/3.0.17/lib");
		array_add(*libpaths, "macos/");
	}

        array_add(*include_paths, tprint("%/%", SOURCE_PATH, "include/"));

        array_add(*system_types_to_include, "timespec");
        array_add(*system_types_to_include, "uintmax_t");
            
        #if OS == .LINUX {
            // Needed for wchar.h.
            array_add(*extra_clang_arguments, "-D_XOPEN_SOURCE=700");
        }

        FOOTER :: #string EOF
FILE :: void;

libnotcurses     :: #library,no_dll "libnotcurses";
libnotcurses_ffi :: #library,no_dll "libnotcurses-ffi";

libdeflate       :: #library,link_always "deflate";
libunistring     :: #library,link_always "unistring";
libncurses       :: #library,link_always "ncurses";
libm             :: #library,link_always "m"; 
        EOF

        footer = FOOTER;

        generate_library_declarations = false;
    }

    output_filename: string;
    #if OS == {
        case .LINUX;
            output_filename = "linux/bindings.jai";
        case .MACOS;
            output_filename = "macos/bindings.jai";
    }
    return generate_bindings(opts, output_filename);
}

#import "Basic";
#import "File";
#import "Bindings_Generator";
