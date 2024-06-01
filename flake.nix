{
  inputs = {
    flake-utils.url = "github:numtide/flake-utils?ref=main";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
    fenix.url = "github:nix-community/fenix?ref=main";
  };
  outputs = inputs:
  let
    commonModules = [
      ./users/wren
      ./common/time.nix
      ./common/i18n.nix
      ./services/openssh.nix
    ];
  in
  {
    nixosConfigurations = {
      anya = inputs.nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        system = "x86_64-linux";
        modules = commonModules ++ [
          ./host/anya
          ./hardware/bluetooth.nix
          ./tweaks/allow_unfree.nix
          ./services/xserver.nix
          ./services/plasma.nix
          ./services/cups.nix
          ./services/pipewire.nix
          ./networking/networkmanager.nix
          ./common/tools/software_development
        ];
      };
    };
  };
}
