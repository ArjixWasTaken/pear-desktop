{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "pear-desktop";
  packages = with pkgs; [ nodejs_24 pnpm_10 ];
  shellHook = ''
    pnpm install --frozen-lockfile
  '';
}
