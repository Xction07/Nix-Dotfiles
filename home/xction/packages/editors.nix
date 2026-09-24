{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
    vscode
    zed-editor
    arduino-ide
    nixd
    nil
    emacs
  ];
}
