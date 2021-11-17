{ pkgs, ... }:

{
	imports = [
		./pc.nix
	  ../../modules/system-modules/hardware/SSD.nix
	  ../../modules/system-modules/hardware/backlight.nix
	];

	services.tlp.enable = true;

	# Only turn off screen on lid close
	services.logind.lidSwitch = "ignore";
	services.logind.lidSwitchDocked = "ignore";
	services.logind.extraConfig = "HandlePowerKey=suspend";
}
