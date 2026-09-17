{ pkgs, ... }:

{
  programs.steam = {
    enable = true;

    # Steam Deck-style login session
    gamescopeSession.enable = true;

    # Steam Remote Play
    remotePlay.openFirewall = true;

    # Enable only if you host dedicated game servers
    dedicatedServer.openFirewall = true;

    # Proton GE
    extraCompatPackages = with pkgs; [
      proton-ge-bin
    ];
  };

  # Optimize system performance while gaming
  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    # Performance & Monitoring
    mangohud
    gamescope

    # Game Launchers
    heroic
    lutris

    # Proton & Wine
    protonplus
    wineWow64Packages.stable

    # Stable Winetricks
    winetricks

    # Utilities
    pciutils
  ];
}