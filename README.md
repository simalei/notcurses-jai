# Notcurses for Jai
Jai bindings for [notcurses](https://github.com/dankamongmen/notcurses), graphics/TUI library.

> [!IMPORTANT]
> Currently only Linux and macOS are supported.

# Usage
Simply download/clone this repository, and add the directory to which it was cloned by passing the `-import_dir` argument or changing `import_path` field in target options.
After that, 
* For Linux: link your project against `deflate`, `unistring`, `ncurses` and `m`.
* For macOS: link your project against `unistring`, `z` and `ncurses`.

## Example
```jai
// Do this when you are changing target options for your workspace.
my_paths: [..]string;
array_add(*my_paths, "modules/");
array_add(*my_paths, ..import_path);
import_path = my_paths;

my_args: [..]string;
array_add(*my_args, "-Lmodules/Notcurses/linux");
array_add(*my_args, "-lnotcurses", "-ldeflate", "-lunistring", "-lncurses", "-lm");
additional_linker_arguments = my_args;
```

# Caveats
## Dependencies
Unfortunately, `notcurses` depends on quite a lot of libraries. Hence, these dependencies apply to binaries that are built with these bindings.
Here is a sample `ldd` output for notcurses `Hello, world!` example built with these bindings.
```
linux-vdso.so.1 (0x00007f7c9692e000)
libdeflate.so.0 => /usr/lib/libdeflate.so.0 (0x00007f7c968f2000)
libunistring.so.5 => /usr/lib/libunistring.so.5 (0x00007f7c9670b000)
libncursesw.so.6 => /usr/lib/libncursesw.so.6 (0x00007f7c9669a000)
libm.so.6 => /usr/lib/libm.so.6 (0x00007f7c9657c000)
libc.so.6 => /usr/lib/libc.so.6 (0x00007f7c9638b000)
/lib64/ld-linux-x86-64.so.2 => /usr/lib64/ld-linux-x86-64.so.2 (0x00007f7c96930000)
```
## Build system
In order to use `notcurses-jai`, you **will** need to write your own metaprogram to compile your code. 
This is due to the fact that there is no CLI option to supply addtional linker arguments, which `notcurses-jai` needs to
be linked against its' external dependencies.
## Windows support
As of 24.03.2026, original `notcurses` has problems with rendering on Windows. Hence, these bindings, even when ported to Windows, will not work.

# Todo
* Port these bindings to Windows.
* Expose configuration options to the developer, e.g. dynamic linkage instead of static, multimedia build, etc.
* There is probably a better way to link against external libraries.
