{ config, ... }:

{
  networking.hostName = "nix";

  networking.networkmanager.enable = true;

  services.tailscale.enable = true;

  networking.firewall = {
    enable = true;

    trustedInterfaces = [
      config.services.tailscale.interfaceName
    ];

    allowedUDPPorts = [
      config.services.tailscale.port
    ];
  };
}