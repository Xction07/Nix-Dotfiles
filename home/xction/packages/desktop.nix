{ pkgs, ... }:

{
  home.packages = with pkgs; [
    awww
    wl-mirror

    grim
    slurp

    wl-clipboard
    cliphist

    mako
    fuzzel

    brightnessctl
    playerctl
    pavucontrol
    easyeffects
    cava
    qpwgraph

    libnotify
    wlrctl
    upower

    xwayland-satellite

    xdg-utils
    xdg-desktop-portal
    xdg-desktop-portal-gnome
    shared-mime-info

    glib
    polkit_gnome
    gearlever
    rustdesk
    #flatpak
  ];
}