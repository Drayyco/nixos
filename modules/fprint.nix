{ pkgs, ... }:

{
  services.fprintd = {
    enable = true;
    tod.enable = true;
    tod.driver = pkgs.libfprint-2-tod1-broadcom;
  };

  security.pam.services = {
    gdm.fprintAuth = true;
    sudo.fprintAuth = false;
    hyprlock.fprintAuth = true;
  };
}
