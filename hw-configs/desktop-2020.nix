{ pkgs, ...}:

{
	imports = [
		./generic/pc.nix
		../modules/system-modules/boot/uefi.nix
		# ../modules/system-modules/hardware/bluetooth.nix

		../modules/system-modules/syncthing.nix
	];
}
