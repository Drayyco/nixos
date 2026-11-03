{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    package = pkgs.git.override { withLibsecret = true; };
    settings = {
      credential.helper = "libsecret";
      user = {
	name = "Drayyco";
	email = "bhsdrayyco@gmail.com";
      };
    };
  };
}
