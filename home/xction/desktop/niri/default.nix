{ pkgs, ... }:

{
  home.packages = with pkgs; [
    niri
  ];

  xdg.configFile."niri/config.kdl".source = ./config.kdl;
  xdg.configFile."niri/noctalia.kdl".source = ./noctalia.kdl;
  xdg.configFile."niri/config.d".source = ./config.d;
}