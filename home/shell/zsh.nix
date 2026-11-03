{ pkgs, ... }:

{
    programs = {
	zsh = {
	    enable = true;
	    enableCompletion = true;
	    autosuggestion.enable = true;
	    syntaxHighlighting.enable = true;
	    oh-my-zsh = {
		enable = true;
		plugins = [
		    "git"
		    "kitty"
		    "fzf"
		    "command-not-found"
		    "sudo"
		    "copyfile"
		    "copypath"
		];
	    };
	    shellAliases = {
		ls = "eza -la";
		tree = "eza --tree";
		snrs = "sudo nixos-rebuild switch --flake .#draynix";
		hypredit = "nvim $HYPR";
		nrs = "(cd $NIXOS && snrs)";
		man = "batman";
		cat = "bat";
		nixedit = "nvim $NIXOS";
		ratune = "kitty --title ratune -e ratune";
	    };
	    plugins = [
	    {
		name = "powerlevel10k";
		src = pkgs.zsh-powerlevel10k;
		file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
	    }
	    {
		name = "powerlevel10k-config";
		src =  ./p10k-config;
		file = ".p10k.zsh";
	    }
	    ];

	    initContent = ''
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export NIXOS="/home/dray/nixos/"
export HYPR="/home/dray/.config/hypr"

export wallpaper=$(awww query | grep -oP '(?<= image: ).*')
		'';

	};
    };
}
