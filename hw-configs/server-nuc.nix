{ pkgs, ...}:

{
  imports = [
	  ./generic/server.nix
		../system-modules/boot/uefi.nix

		../system-modules/syncthing.nix
  ];
}