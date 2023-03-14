{ pkgs, ... }:

{
	imports = [
		./pc.nix
	  ../../modules/system-modules/hardware/SSD.nix
	  ../../modules/system-modules/hardware/backlight.nix
		../../modules/system-modules/hibernation.nix

		../../modules/system-modules/network/networking.nix
	];

	services.tlp = {
	  enable = true;
	};
}
