{ config, pkgs, ... }:

{
	# Your hardware-configuration.nix will be imported via flake.nix

	networking.hostName = "nixos";
	
	services.xserver = {
		enable = true;
		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
		xkb = {
			layout = "us";
			variant = "";
		};
		digimend.enable = true;
	};
	
	programs.steam = {
		enable = true;
		remotePlay.openFirewall = true;
		dedicatedServer.openFirewall = true;
		localNetworkGameTransfers.openFirewall = true;
	};

	programs.java.enable = true;

	# Note: You commented out openssh, but if you want to enable it for this host:
	# services.openssh.enable = true;

	imports = [
		../modules/common.nix
		../modules/programs.nix
	];
}