{ pkgs, ... }:

{
	imports = [
		./pc.nix
	  ../../modules/system-modules/hardware/SSD.nix
	  ../../modules/system-modules/hardware/backlight.nix
		../../modules/system-modules/hardware/screenpowersetting.nix
	];

	services.tlp.enable = true;
}
