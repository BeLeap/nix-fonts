{
  description = "Fonts for nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.simpleFlake {
      inherit self nixpkgs;
      name = "beleap-nix-fonts";
      overlay = ./overlay.nix;
    };
}
