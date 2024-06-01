{ pkgs, configs, ... }:
{
  users.users.wren = {
    description = "Wren Morozova";
    isNormalUser = true;
    shell = pkgs.zsh;
    extraGroups = [
      "audio"
      "dialout"
      "networkmanager"
      "plugdev"
      "video"
      "wheel"
    ];
    packages = with pkgs; [
      firefox
      helix
      neofetch
    ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEoDw5PVRJDvWTqUU8/vbuz9hpx9NGRni4ayXNeWYSy1"
    ];
  };
}
