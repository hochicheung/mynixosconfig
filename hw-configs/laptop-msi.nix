{ pkgs, ...}:

{
	imports = [
		./generic/laptop.nix
		../system-modules/boot/uefi.nix

		../system-modules/syncthing.nix
	];
}