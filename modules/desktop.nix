{ ... }:

{
  services.xserver.enable = true;

#  services.displayManager.gdm.enable = true;
 # services.displayManager.gdm.wayland = true;

  programs.niri.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };
}

