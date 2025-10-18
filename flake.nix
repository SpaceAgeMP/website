{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nix-jekyll-builder.url = "git+https://git.chobble.com/chobble/nix-jekyll-builder";
  };

  # Regenerate gemset.nix: nix-shell -p bundix --run "bundix -l"
  outputs = { self, flake-utils, nix-jekyll-builder }:
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
