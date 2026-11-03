{ config, lib, pkgs, ... }:

{
	home.file.".config/nvim".source =
		config.lib.file.mkOutOfStoreSymlink /home/dray/dotfiles/nvim;
}
	

