{ ... }:

{
    services.swaync = {
	enable = true;
	settings = {
	    control-center-positionX = "center";
	    control-center-positionY = "center";
	    control-center-margin-top = "10";
	    control-center-margin-bottom = "10";
	    timeout = "5";
	    widgets = [
		"title"
		"dnd"
		"slider"
		"notifications"
	    ];
	};
    };
}
