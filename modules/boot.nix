{ ... }:

{
  boot.loader.timeout = 60;

  boot.loader.systemd-boot.enable = false;
  boot.loader.limine.enable = true;

  boot.loader.efi.canTouchEfiVariables = true;

  boot.loader.limine.maxGenerations = 5;

  # boot.loader.limine.extraEntries = ''
  #   /Windows
  #     protocol: efi_chainload
  #     image_path: guid(8502AE0A-8734-44AE-9E9A-62CBE3971D5A):/EFI/Microsoft/Boot/bootmgfw.efi
  # '';
}