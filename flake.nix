{
  description = "Xction's NixOS configuration";

  inputs = {
    # NixOS unstable → currently the 26.11 development series
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    # Gaming modules
    nix-gaming = {
      url = "github:fufexan/nix-gaming";
    };

    # Doom Emacs
    nix-doom-emacs-unstraightened = {
      url = "github:marienz/nix-doom-emacs-unstraightened";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Home Manager
    # master is appropriate while 26.11 is still in development
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Nixvim
    nixvim = {
      url = "github:nix-community/nixvim";
    };

    # Noctalia
    noctalia = {
      url = "github:noctalia-dev/noctalia";
    };
  };

  outputs =
    inputs@{
      self,
      nixpkgs,
      home-manager,
      nixvim,
      noctalia,
      nix-gaming,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs-unstable = import nixpkgs {
        inherit system;
        config.allowUnfree = true;
      };
    in
    {
      nixosConfigurations.nix = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit inputs pkgs-unstable;
        };

        modules = [
          ./hosts/nix

          # Home Manager
          home-manager.nixosModules.home-manager

          # Gaming
          nix-gaming.nixosModules.platformOptimizations
          nix-gaming.nixosModules.pipewireLowLatency
          nix-gaming.nixosModules.wine

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.extraSpecialArgs = {
              inherit inputs pkgs-unstable;
            };

            home-manager.backupFileExtension = "backup";

            home-manager.users.xction = import ./home/xction;
          }
        ];
      };
    };
}