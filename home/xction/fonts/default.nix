{ pkgs, ... }:

{
  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      monospace = [
        "Maple Mono NF"
        "JetBrainsMono Nerd Font"
        "Iosevka Nerd Font"
        "CaskaydiaCove Nerd Font"
        "FiraCode Nerd Font"
      ];

      sansSerif = [
        "Outfit"
        "Iosevka Nerd Font"
        "JetBrainsMono Nerd Font"
        "Maple Mono NF"
        "CaskaydiaCove Nerd Font"
        "FiraCode Nerd Font"
      ];

      serif = [
        "Iosevka Nerd Font"
        "JetBrainsMono Nerd Font"
        "Maple Mono NF"
        "CaskaydiaCove Nerd Font"
        "FiraCode Nerd Font"
      ];

      emoji = [
        "Noto Color Emoji"
      ];
    };
  };

  home.packages = with pkgs; [
    # Programming fonts
    nerd-fonts.jetbrains-mono
    maple-mono.NF
    nerd-fonts.iosevka
    nerd-fonts.caskaydia-cove
    nerd-fonts.fira-code

    # Google Fonts collection, if available
    google-fonts

    # Emoji
    noto-fonts-color-emoji
  ];
}