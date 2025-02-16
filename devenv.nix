{ pkgs, lib, config, inputs, ... }:

{
  # https://devenv.sh/packages/
  packages = [
    pkgs.hadolint
    pkgs.shellcheck
    pkgs.container-structure-test
    pkgs.lefthook
    pkgs.docker
    pkgs.commitlint-rs
  ];

  enterShell = ''
    lefthook install
  '';
}
