{ lib, config, ... }:

let
  cfg = config.my.windows;
in
{
  options.my.windows = {
    enable = lib.mkEnableOption "Windows boot entry";

    partuuid = lib.mkOption {
      type = lib.types.str;
      default = "";
      description = "PARTUUID of the Windows EFI partition.";
    };
  };

  config = lib.mkIf cfg.enable {
    boot.loader.limine.extraEntries = ''
      /Windows
        protocol: efi_chainload
        image_path: guid(${cfg.partuuid}):/EFI/Microsoft/Boot/bootmgfw.efi
    '';
  };
}