{ pkgs, ... }:

{
  home.packages = with pkgs; [
    fish
    kitty
    tmux
    starship
    zoxide
  ];
}