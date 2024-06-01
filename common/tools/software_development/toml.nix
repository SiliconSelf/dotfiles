{ pkgs, inputs, ... }:
{
  environment.systemPackages = (with pkgs; [
    taplo
  ]);
}
