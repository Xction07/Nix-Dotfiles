{ pkgs, ... }:

{
  programs.fish = {
    enable = true;

    interactiveShellInit = ''
      set -g fish_greeting
    '';

    shellAliases = {
      mirror = "wl-mirror --fullscreen --fullscreen-output HDMI-A-1 eDP-1";
    };
  };
}
