{
  description = "NixOS Configuration Flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-24.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, home-manager, flake-utils, ... }:
    let
      system = "x86_64-linux";

      hostname = "nixos";      

      pkgs = import nixpkgs {
        inherit system;
      };
    in {
      nixosConfigurations.${hostname} = nixpkgs.lib.nixosSystem {
        inherit system;
        
        modules = [ ./nixos/configuration.nix  ];
      };

      homeConfigurations.${hostname} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        
        modules = [
          ./home.nix
        ];
      };
    };
}
