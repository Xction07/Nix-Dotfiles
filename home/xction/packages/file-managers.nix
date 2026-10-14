{ pkgs, ... }:

{
  home.packages = with pkgs; [
    yazi
    poppler
    nautilus
    thunar
  ];
}