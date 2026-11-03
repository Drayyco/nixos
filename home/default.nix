{ pkgs, inputs, ... }:

{
  programs.home-manager.enable = true;

  imports = [
    ./desktop/waybar.nix
    ./desktop/swaync.nix
    ./desktop/quickshell.nix
    ./desktop/wallust/wallust.nix
    ./desktop/rofi/rofi.nix
    ./desktop/hypridle.nix
    ./git.nix
    ./fzf.nix
    ./nvim.nix
    ./hyprland.nix
    ./hyprlock.nix
    ./kitty.nix
    ./packages.nix
    ./btop.nix
    ./cursor.nix
    ./shell/zsh.nix
    ./user.nix
    inputs.ratune.homeManagerModules.default
  ];
}

