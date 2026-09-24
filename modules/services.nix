{ pkgs, ... }:

{
  # Printing
  services.printing.enable = true;

  # Disk mounting (Nautilus/Thunar)
  services.udisks2.enable = true;

  # File manager integration
  services.gvfs.enable = true;

  # Polkit authentication daemon
  security.polkit.enable = true;

  # D-Bus (required by Polkit)
  services.dbus.enable = true;

  services.timesyncd.enable = true;
  services.upower.enable = true;
  # Polkit GNOME authentication agent
  
  #Flatpak Enable
  services.flatpak.enable = true;
  
  environment.systemPackages = with pkgs; [
    polkit_gnome
  ];
}

