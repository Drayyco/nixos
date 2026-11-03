{ config, lib, pkgs, ... }:

{
	home.file.".config/hypr/hyprlock.conf".source =
		config.lib.file.mkOutOfStoreSymlink /home/dray/dotfiles/hyprlock.conf;
}
