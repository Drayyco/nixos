{ config, lib, pkgs, ... }:

{
	home.file.".config/kitty".source =
		config.lib.file.mkOutOfStoreSymlink /home/dray/dotfiles/kitty;
}
