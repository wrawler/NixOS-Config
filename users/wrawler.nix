{ config, pkgs, ... }:

{
	home.username = "wrawler";
	home.homeDirectory = "/home/wrawler";

	# You can move your user-specific packages here instead of `environment.systemPackages`
	home.packages = with pkgs; [
		# thunderbird (if you choose to uncomment)
		# The following were in your systemPackages but are better as user packages:
		neofetch
		copyq # clipboard manager
		gnome-terminal
		starship
	];
  
	# Your Starship prompt init
	programs.bash.promptInit = ''
		eval "$(starship init bash)"
	'';
  
	# To enable the Starship prompt binary itself:
	programs.starship.enable = true;

	home.stateVersion = "25.05";
}