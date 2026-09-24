{ pkgs, ... }:

{
  programs.fish.enable = true;

  users.users.xction = {
    isNormalUser = true;
    description = "xction";

    shell = pkgs.fish;

    extraGroups = [
      "wheel"
      "networkmanager"
      "dialout"
      "uucp"
      "docker"
    ];
  };
}