{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    htop
    helix
  ];
}
