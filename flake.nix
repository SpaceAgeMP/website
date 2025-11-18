{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    flake-utils.url = "github:numtide/flake-utils";
    nix-jekyll-builder.url = "git+https://git.chobble.com/chobble/nix-jekyll-builder";
    nix-jekyll-builder.inputs.nixpkgs.follows = "nixpkgs";
    nix-jekyll-builder.inputs.flake-utils.follows = "flake-utils";
  };

  # Regenerate gemset.nix: nix-shell -p bundix --run "bundix -l"
  outputs = { flake-utils, nix-jekyll-builder, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        package =  (nix-jekyll-builder.lib.mkJekyllSite{
          pname = "spaceage-website";
          src = ./.;
          gemfile = ./Gemfile;
          lockfile = ./Gemfile.lock;
          gemset = ./gemset.nix;
        });
      in
      {
        packages.default = package;
        packages.spaceage-website = package;
      });
}
