{ pkgs, inputs, ... }:
{
  imports = [
    ./rust.nix
    #./toml.nix
  ];
  programs.git = {
    enable = true;
  };
}
