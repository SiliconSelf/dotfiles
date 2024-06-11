{ pkgs, inputs, ... }:
{
  imports = [
    ./rust.nix
    #./toml.nix
  ];
  environment.systemPackages = with pkgs; [
    direnv
    vscodium
  ];
  programs.git = {
    enable = true;
  };
}
