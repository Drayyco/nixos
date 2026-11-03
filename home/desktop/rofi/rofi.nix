{ ... }:

{
    programs.rofi = {
	enable = true;
	modes = [
	"drun"
	"ssh"
	];
	font = "JetBrainsMono Nerd Font 16";
	theme = "~/.config/rofi/colors.rasi";
	extraConfig = {
	    display-drun = "Applications: ";
	    display-ssh = "SSH: ";
	    show-icons = true;
	    sidebar-mode = true;
	    terminal = "kitty";
	    ssh-command = "{terminal} -- kitty +kitten ssh {host}";
	    drun-display-format = "{name}";
	};
    };
}
