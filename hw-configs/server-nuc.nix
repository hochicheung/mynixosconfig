{ pkgs, ...}:

{
  imports = [
		../system-modules/boot/uefi.nix
		../system-modules/auto-upgrade-server.nix

		../system-modules/hardware/cpu-firmware/intel.nix
		../system-modules/hardware/SSD.nix

		../system-modules/syncthing.nix
		../system-modules/network/sshd.nix
  ];
}