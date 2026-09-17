{ pkgs, ... }:

{
  fonts.fontconfig = {
    enable = true;

    defaultFonts = {
      monospace = [
        "Maple Mono NF"
      ];

      sansSerif = [
        "Iosevka Nerd Font"
      ];

      serif = [
        "Iosevka Nerd Font"
      ];

      emoji = [
        "Noto Color Emoji"
      ];
    };
  };

  home.packages = with pkgs; [
    nerd-fonts.iosevka
    maple-mono.NF
    noto-fonts-color-emoji
  ];
}
