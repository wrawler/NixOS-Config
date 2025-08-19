{ config, pkgs, ... }:

{

	fonts = {
		enableDefaultPackages = true;

		packages = with pkgs; [
			nerd-fonts.noto
		];
  	};

	environment.systemPackages = with pkgs; [
		wget
		vscode
		gnome-tweaks
		mission-center
		brave
		obsidian
		python313
		git
		planify
		iotas
		warp-terminal
		devtoolbox
		clapgrep
		spotify
		openboard
		wasistlos # whatsapp client
		gnome-frog # text extraction tool
	];
}