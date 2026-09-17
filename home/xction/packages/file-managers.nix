{ pkgs, ... }:

{
  home.packages = with pkgs; [
    yazi
    nautilus
    thunar
  ];
}