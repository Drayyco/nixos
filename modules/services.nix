{ ... }:

{
  programs = {
    zsh.enable = true;
    firefox.enable = true;
    hyprland.enable = true;
  };

  services = {
    libinput.enable = true;
    openssh.enable = true;
    blueman.enable = true;
    flatpak.enable = true;
    upower.enable =true;
    gnome.gnome-keyring.enable = true;
    logind.settings.Login = {
        HandleLidSwitch= "suspend-then-hibernate";
        HandlePowerKey = "suspend";
    };
  };

  security = {
    polkit.enable = true;
  };

  nixpkgs.config.allowUnfree = true;
}
