{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };
  outputs = { self, nixpkgs }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;

      ruby = pkgs.ruby_4_0;

      gems = pkgs.bundlerEnv {
        name = "jekyll-env";
        inherit ruby;
        gemdir = ./docs; 
      };
    in {
      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [
          pkgs.bashInteractive
          ruby
          gems
          gems.wrappedRuby
          pkgs.bundler
          pkgs.bundix
        ];
      };
    };
}