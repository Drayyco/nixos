{ ... }:

{
  imports = [
    ./audio.nix
    ./hypridle.nix
    ./wireguard.nix
    ./boot.nix
    ./display.nix
    ./fprint.nix
    ./networking.nix
    ./services.nix
    ./user.nix
  ];
}
