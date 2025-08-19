{ config, pkgs, ... }:

{
	imports = [
		../modules/common.nix
		../modules/programs.nix
	];
	# Your hardware-configuration.nix will be imported via flake.nix

	networking.hostName = "nixos";

	boot.loader.grub = {
		enable = true;
		version = 2;
		device = "/dev/vda"; # or /dev/sda depending on your VM disk
	};

	
	services.xserver = {
		enable = true;
		displayManager.gdm.enable = true;
		desktopManager.gnome.enable = true;
		xkb = {
			layout = "us";
			variant = "";
		};
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


}