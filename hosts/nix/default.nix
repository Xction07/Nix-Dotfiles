{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix

    ../../modules/audio.nix
    ../../modules/boot.nix
    ../../modules/desktop.nix
    ../../modules/graphics.nix
    ../../modules/locale.nix
    ../../modules/packages.nix
    ../../modules/services.nix
    ../../modules/networking.nix
    ../../modules/users.nix
    ../../modules/bluetooth.nix
    ../../modules/location.nix
    ../../modules/power.nix
    ../../modules/polkit.nix
    ../../modules/gaming.nix
    ../../modules/nh.nix
    ../../modules/virtual.nix
    ../../modules/nix-id.nix
    ../../modules/windows.nix
    ../../modules/appimage.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Latest kernel
  boot.kernelPackages = pkgs.linuxPackages_zen;

  # Windows boot entry
  my.windows.enable = true;
  my.windows.partuuid = "8502AE0A-8734-44AE-9E9A-62CBE3971D5A";

  system.stateVersion = "26.05";
}