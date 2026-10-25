{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # C/C++ and others
    clang
    gdb
    llvmPackages_21.clang-tools
    cmake
    gnumake
    mold
    pkgconf
    lldb
    nasm
    
    # Documentation / manual pages
    man-pages
    man-pages-posix
    man-db

    # Python
    python314
    python314Packages.pip
    python314Packages.ipykernel
    basedpyright

    # Rust
    rustup

    # JavaScript / TypeScript
    nodejs
    bun

    # Lua
    lua
    luarocks

    # Zig
    zig
    zls

    # Go
    tinygo

    #flutter
    flutter

    #avr
    avrdude
    ravedude
  ];
}