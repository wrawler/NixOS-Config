{
	description = "My NixOS + Home Manager config";

	inputs = {
		nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";
		home-manager.url = "github:nix-community/home-manager/release-24.05";
		home-manager.inputs.nixpkgs.follows = "nixpkgs";
	};

	outputs = { self, nixpkgs, home-manager, ... }:
		let
		system = "x86_64-linux";
		lib = nixpkgs.lib;

		in {
			nixosConfigurations = {
				nixos = lib.nixosSystem {
					inherit system;

					modules = [
						./hardware-configuration.nix
						./hosts/nixos.nix
						
						home-manager.nixosModules.home-manager {
							home-manager.useGlobalPkgs = true;
							home-manager.useUserPackages = true;
							home-manager.users.wrawler = import ./users/wrawler.nix;
						}
					];
				};
			};
		};
}