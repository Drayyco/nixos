{ ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ../modules
    ];

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "America/New_York";
  system.stateVersion = "26.05"; 

}

