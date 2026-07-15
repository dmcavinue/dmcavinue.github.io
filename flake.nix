{
  inputs = {
    nix-environments.url = "git+ssh://git@github.com/dmcavinue/nix-environments.git";
  };
  outputs = { self, nixpkgs, nix-environments }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      m = nix-environments.devShellModules;
    in {
      devShells.x86_64-linux.default = nix-environments.lib.mkShell pkgs [
        (m.base { inherit pkgs; extraPkgs = [
          pkgs.bashInteractives

        ];})
        (m.opencode { inherit pkgs; })
      ];
    };
}