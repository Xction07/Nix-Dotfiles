{
  config,
  pkgs,
  ...
}: {

  imports = [
    ./yazi
    ./fish
    ./starship
    ./fastfetch
  ];

  home.packages = with pkgs; [
    yazi
    fastfetch
    kitty
    unzip
    p7zip
    ripgrep
    eza
    btop
    cava
    wget
  ];

  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.direnv = {
    enable = true;
    enableFishIntegration = true;
    nix-direnv.enable = true;
  };

  xdg.configFile."kitty".source = ./kitty;
}