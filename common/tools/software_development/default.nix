{ pkgs, inputs, ... }:
{
  imports = [
    ./rust.nix
    #./toml.nix
  ];
  environment.systemPackages = with pkgs; [
    direnv
  ];
  programs.git = {
    enable = true;
  };
}
