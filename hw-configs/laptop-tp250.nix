{ pkgs, ...}:

{
	imports = [
		./generic/laptop.nix
		../modules/system-modules/boot/uefi.nix
		../modules/system-modules/hardware/bluetooth.nix

		../modules/system-modules/hardware/battery/tlp/tlp.nix
		../modules/system-modules/hardware/battery/tlp/tlp-processors.nix
		../modules/system-modules/hardware/battery/tlp/tlp-thinkpad.nix

		../modules/system-modules/syncthing.nix
	];
}
