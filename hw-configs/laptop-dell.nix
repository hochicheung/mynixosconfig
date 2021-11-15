{ pkgs, ...}:

{
	imports = [
	  ./generic/laptop.nix
		# (import ./generic/pc.nix { mouse-acceleration = false; })
		../modules/system-modules/boot/uefi.nix

		../modules/system-modules/syncthing.nix
	];
}