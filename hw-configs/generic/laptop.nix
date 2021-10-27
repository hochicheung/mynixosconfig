{ pkgs, ... }:

{
	imports = [
		./pc.nix
	  ../../system-modules/hardware/SSD.nix
	  ../../system-modules/hardware/backlight.nix
	];

	services.tlp.enable = true;

	# Only turn off screen on lid close
	services.logind.lidSwitch = "ignore";
	services.logind.lidSwitchDocked = "ignore";
}
