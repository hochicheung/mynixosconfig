{ pkgs, ...}:

{
	imports = [
		./generic/laptop.nix
		../modules/system-modules/boot/uefi.nix
		../modules/system-modules/hardware/bluetooth.nix

		../modules/system-modules/syncthing.nix
	];
}
