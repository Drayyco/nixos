{ pkgs, ... }:

{
  users.users.dray = {
   shell = pkgs.zsh;
   isNormalUser = true;
   extraGroups = [ "wheel" "input" "networkmanager" "audio" "video" ];
   packages = with pkgs; [
     tree
     (wineWow64Packages.full.override {
	wineRelease = "staging";
	mingwSupport = true;
     })
     winetricks
   ];
  };
}

