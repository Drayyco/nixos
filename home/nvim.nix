{ config, lib, pkgs, ... }:

{
	home.file.".config/nvim/config".source =
		config.lib.file.mkOutOfStoreSymlink ~/dotfiles/nvim;
}
	

