{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
    jujutsu
    gh
    wget

    tree-sitter
    eza
    bat
    fd
    fzf
    ripgrep
    jq

    file
    bc
    tealdeer

    fastfetch
    btop
    ncdu

    unzip
    unrar-wrapper

    usbutils
    lm_sensors
    tree
  ];
}
