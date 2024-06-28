{ pkgs, inputs, ... }:
{
  imports = [
    ./rust.nix
    #./toml.nix
  ];
  environment.systemPackages = with pkgs; [
    direnv
    vscodium
    bruno
  ];
  programs.git = {
    enable = true;
  };
}
