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
	];

	home.stateVersion = "25.05";
}