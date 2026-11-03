{ pkgs, ... }:

{
  home.packages = with pkgs; [
   vim
   supersonic-wayland
   libnotify
   gdm-settings
   libreoffice
   p7zip
   gcc
   git-crypt
   python313Packages.pygobject3
   bat-extras.batman
   gtk3
   gobject-introspection
   gnumake
   lua-language-server
   stylua
   nodejs
   pkg-config
   rustc
   rustfmt
   kdePackages.qtdeclarative
   clippy
   mpv
   qimgv
   hollywood
   wireguard-tools
   termsonic
   unzip
   python3
   fd
   neovim
   vesktop
   flameshot
   wl-clipboard
   wl-clip-persist
   grim
   slurp
   satty
   claude-code
   pavucontrol
   eza
   # nautilus
   # kdePackages.dolphin
   thunar
   libsecret
   vimix-cursors
   zsh-powerlevel10k
   nerd-fonts.monofur
   nerd-fonts.jetbrains-mono
   nerd-fonts._0xproto
   fastfetch
   cargo
   wget
   hyprlock
   tldr
   kitty
   usbutils
   bat
   stow
   brightnessctl
   playerctl
   wallust
   awww
  ];

  programs = {
  ripgrep.enable = true;
  ratune.enable = true;
  prismlauncher.enable = true;
  };

  services = {
          hyprpolkitagent.enable = true;
      };
}
