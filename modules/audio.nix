{
  services.pulseaudio.enable = false;

  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;

    alsa.enable = true;
    alsa.support32Bit = true;

    pulse.enable = true;

    wireplumber.extraConfig = {
      "51-pulse-flat-volumes" = {
        "pulse.properties" = {
          "pulse.flat-volumes" = true;
        };
      };
    };
  };
}
