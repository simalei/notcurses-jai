# Notcurses for Jai
Jai bindings for [notcurses](https://github.com/dankamongmen/notcurses), graphics/TUI library.

# Usage
Simply download/clone this repository, and add the directory to which it was cloned by passing the `-import_dir` argument or changing `import_path` field in target options.
After that, link your project against `notcurses`, `deflate`, `unistring`, `ncurses` and `m`.

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

# Dependencies
Unfortunately, `notcurses` depends on quite a lot of libraries. Hence, these dependencies apply to binaries that are built with these bindings.
Here is a sample `ldd` output for notcurses Hello, world! example built with these bindings.
```
linux-vdso.so.1 (0x00007f7c9692e000)
libdeflate.so.0 => /usr/lib/libdeflate.so.0 (0x00007f7c968f2000)
libunistring.so.5 => /usr/lib/libunistring.so.5 (0x00007f7c9670b000)
libncursesw.so.6 => /usr/lib/libncursesw.so.6 (0x00007f7c9669a000)
libm.so.6 => /usr/lib/libm.so.6 (0x00007f7c9657c000)
libc.so.6 => /usr/lib/libc.so.6 (0x00007f7c9638b000)
/lib64/ld-linux-x86-64.so.2 => /usr/lib64/ld-linux-x86-64.so.2 (0x00007f7c96930000)
```

# Todo
* Port these bindings to other OSes (primarily macOS and Windows)
* Expose configuration options to the developer, e.g. dynamic linkage instead of static, multimedia build, etc.
* There is probably a better way to link against external libraries.
