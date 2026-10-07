{ ... }:

{
  home.username = "xction";
  home.homeDirectory = "/home/xction";

  programs.home-manager.enable = true;

  imports = [
    ./desktop
    ./fonts
    ./editors
    ./terminal
    ./packages.nix
    #./session.nix
    ./apps.nix
  ];

  home.stateVersion = "26.05";
}
