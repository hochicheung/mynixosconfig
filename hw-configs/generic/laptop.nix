{ pkgs, ... }:

{
	imports = [
		./pc.nix
	  ../../modules/system-modules/hardware/SSD.nix
	  ../../modules/system-modules/hardware/backlight.nix
		../../modules/system-modules/hibernation.nix
	];

	services.tlp = {
	  enable = true;
		extraConfig = ''
		  START_CHARGE_THRESH_BAT0=65
		  STOP_CHARGE_THRESH_BAT0=80
		'';
	};
}
