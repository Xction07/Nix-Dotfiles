{ pkgs, ... }:

let
  cursorTheme = "Bibata-Original-Classic";
  cursorSize = 16;
in
{
  home.pointerCursor = {
    package = pkgs.bibata-cursors;
    name = cursorTheme;
    size = cursorSize;

    gtk.enable = true;
    x11.enable = true;
  };

  home.sessionVariables = {
    XCURSOR_THEME = cursorTheme;
    XCURSOR_SIZE = builtins.toString cursorSize;
  };
}