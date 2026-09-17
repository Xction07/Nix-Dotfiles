{ config, pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Disable Panel Self Refresh (PSR) on the AMD iGPU.
  # Causes random screen flicker on the internal eDP panel (0x10 = DC_DEBUG_MASK_DISABLE_PSR).
  # boot.kernelParams = [ "amdgpu.dcdebugmask=0x10" ];

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    modesetting.enable = true;

    # RTX 5050 supports the open kernel module.
    open = true;

    nvidiaSettings = true;

    powerManagement.enable = true;
    powerManagement.finegrained = false;

    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;

      nvidiaBusId = "PCI:1:0:0";
      amdgpuBusId = "PCI:6:0:0";
    };
  };
}