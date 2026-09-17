{ pkgs, ... }:

{
  home.packages = with pkgs; [

    # C/C++
    gdb
    gcc
    llvmPackages_21.clang-tools
    cmake
    gnumake
    mold
    pkgconf
    lldb

    # Python
    python313
    python313Packages.pip
    python313Packages.ipykernel
    basedpyright

    # Rust
    rustup

    # JavaScript / TypeScript
    nodejs
    bun
    typescript-language-server

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