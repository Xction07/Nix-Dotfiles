{ pkgs, ... }:

{
  home.packages = with pkgs; [
    vesktop
    #kdePackages.kdeconnect-kde
  ];
}