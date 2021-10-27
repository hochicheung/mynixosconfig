{ pkgs, ...}:

{
	imports = [
	  ./generic/pc.nix
		./generic/laptop.nix
		# (import ./generic/pc.nix { mouse-acceleration = false; })
		../system-modules/boot/uefi.nix

		../system-modules/syncthing.nix
	];
}
