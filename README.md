# native-c-node-module

<img src="misc/icon.png" width="100px"/>

*From simple roots a module will grow.*

There's a lot of information about creating native node modules in C++ but few
resources on creating native node modules in C. Well, this template is for that.

See an example: [@coalpha/ps-list](https://github.com/coalpha/ps-list)

## requirements

- Any operating system that `node-gyp` works on.
- NodeJS and npm
- Python
- GNU Make. Windows users should use `mingw32-make.exe`
- clangd (optional)

## instructions

1. Clone this repo.
2. Remove files you don't want or need.
3. Edit the `package.json` and `.editorconfig`.
4. Inspect the Makefile.
5. When you are satisfied, run `make` to generate `compile_flags.txt` for
   clangd.
6. Run `make print` to compile and run hello world.
7. Enjoy!

I highly recommend sticking with Make for your build system since it's generally
easy to understand.
