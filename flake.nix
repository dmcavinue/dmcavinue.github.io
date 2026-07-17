{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-environments.url = "git+ssh://git@github.com/dmcavinue/nix-environments.git";
  };
  outputs = { self, nixpkgs, nix-environments }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;

      ruby = pkgs.ruby_4_0;

      gems = pkgs.bundlerEnv {
        name = "jekyll-env";
        inherit ruby;
        gemdir = ./docs; 
      };

      m = nix-environments.devShellModules;
    in {
      devShells.x86_64-linux.default = nix-environments.lib.mkShell pkgs [
        (m.base { 
          inherit pkgs; 
          extraPkgs = [
            pkgs.bashInteractive
            ruby
            gems
            gems.wrappedRuby
            pkgs.bundler
            pkgs.bundix
          ];
        })
        (m.opencode { inherit pkgs; })
      ];
    };
}