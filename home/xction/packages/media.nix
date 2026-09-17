{ pkgs, ... }:

{
  home.packages = with pkgs; [
    mpv
    vlc
    #spotify
    eog
    imagemagick
    inkscape
    ffmpeg
    easyeffects
    cava
    qpwgraph
    zathura
    copyq
  ];
}