{
  description = "FHS environment that allows me to use Haskell on NixOS without Nix-specific solutions.";
  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = {
    self,
    nixpkgs,
    flake-utils,
  }:
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = nixpkgs.legacyPackages.${system};
      fhsEnv =
        (pkgs.buildFHSUserEnv rec {
          name = "nebokrai";
          targetPkgs = pkgs: (with pkgs.haskellPackages; [
            cabal-install
            haskell-language-server
            hlint
            ormolu
            # pkgs.bashInteractive
            # libuuid
            # libz # needed for 'numpy'
          ]);
          profile = ''
            # export LD_LIBRARY_PATH="/lib:$LD_LIBRARY_PATH:${pkgs.lib.makeLibraryPath [pkgs.libuuid]}"
            # poetry install # add --no-root here if this is just a metapackage
            # source "$(poetry env info --path)"/bin/activate
          '';
        })
        .env;
    in {devShells.default = fhsEnv;});
}