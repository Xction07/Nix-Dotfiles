{ pkgs, ... }:

{
  home.packages = with pkgs; [
    pkgs.kdePackages.kdenlive
    openshot-qt
  ];
}