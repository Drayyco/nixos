{ ... }:

{
    xdg.configFile."wallust/templates" = {
        source = ./templates;
        recursive = true;
    };

    programs.wallust = {
	enable = true;
	settings = {
	    backend = "wal";
	    color_space = "salience";
	    palette = "saliencedarkdistributed16";
	    check_contrast = true;

	    templates = {
		kitty.template = "kitty.conf";
		kitty.target = "~/dotfiles/kitty/colors.conf";
		waybar.template = "waybar.css";
		waybar.target = "~/.config/waybar/colors.css";
		rofi.template = "colors.rasi";
		rofi.target = "~/.config/rofi/colors.rasi";
		neopywal.template = "colors_neopywal.vim";
		neopywal.target = "~/.cache/wallust/colors_neopywal.vim";
		vencord.template = "discord-wallust-beta.css";
		vencord.target = "~/.config/vesktop/themes/wallust.css";
		hypr.template = "colors.lua";
		hypr.target = "~/.config/hypr/colors.lua";
	    };
	};
    };

}
