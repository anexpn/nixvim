{
  description = "My NeoVim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    flake-parts,
    ...
  } @ inputs:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-linux" "x86_64-linux" "aarch64-darwin" "x86_64-darwin"];

      imports = [
        inputs.nixvim.flakeModules.default
      ];

      nixvim = {
        packages.enable = true;
        checks.enable = true;
      };

      flake.nixvimModules = {
        default = ./config;
      };

      flake.homeManagerModules = {
        default = {
          imports = [
            inputs.nixvim.homeManagerModules.nixvim
          ];

          programs.nixvim = {
            enable = true;
            imports = [
              self.nixvimModules.default
            ];
          };
        };
      };

      perSystem = { system, ... }: {
        nixvimConfigurations = {
          default = inputs.nixvim.lib.evalNixvim {
            inherit system;
            modules = [
              self.nixvimModules.default
            ];
          };
        };
      };
    };
}
