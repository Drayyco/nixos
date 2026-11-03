{ config, lib, pkgs, ... }:

{
    home.file.".config/hypr/hyprland.lua".source =
        config.lib.file.mkOutOfStoreSymlink /home/dray/dotfiles/hyprland.lua;
}
