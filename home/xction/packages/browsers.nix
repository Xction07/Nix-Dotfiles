{ pkgs, pkgs-unstable, ... }:

{
  home.packages =
    (with pkgs; [
      firefox
      brave
    ])
    ++ [
      pkgs-unstable.librewolf
    ];
}