{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    devenv.url = "github:cachix/devenv";
  };



  nixConfig = {
    extra-trusted-public-keys = "devenv.cachix.org-1:w1cLUi8dv3hnoSPGAuibQv+f9TZLr6cv/Hm9XgU50cw=";
    extra-substituters = "https://devenv.cachix.org";
  };

  outputs = { nixpkgs, devenv, ... }@inputs:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in
    {
      devShells.x86_64-linux.default = devenv.lib.mkShell {
        inherit inputs pkgs;



        modules = [

          ({ ... }: {



            packages = with pkgs; [

              yarn

              cz-cli # commitizen

            ];



            pre-commit.hooks = {

              deadnix.enable = true;

              nixpkgs-fmt.enable = true;

              nil.enable = true;

              commitizen.enable = true;

              markdownlint.enable = true;
              stylua.enable = true;

            };


          })
        ];

      };
    };
}
