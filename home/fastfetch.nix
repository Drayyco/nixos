{ config, lib, pkgs, ... }:

{
    home.file.".config/fastfetch".source =
        config.lib.file.mkOutOfStoreSymlink /home/dray/dotfiles/fastfetch;
}


