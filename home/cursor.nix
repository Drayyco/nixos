{ pkgs, ... }:

{
    home.pointerCursor = {
	gtk.enable = true;
	package = pkgs.vimix-cursors;
	name = "Vimix-cursors";
	size = 24;
    };

    gtk = {
	enable = true;
	theme = {
	    package = pkgs.graphite-gtk-theme;
	    name = "Graphite-Dark";
	};
    };
}
