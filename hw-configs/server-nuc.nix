{ pkgs, ...}:

{
  imports = [
		../hw-configs/generic/pc.nix
		../modules/myprivatenixosconfig/server.nix
		# ../system-modules/agenix.nix

		../modules/system-modules/boot/uefi.nix
		../modules/system-modules/auto-upgrade-server.nix

		../modules/system-modules/hardware/cpu-firmware/intel.nix
		../modules/system-modules/hardware/SSD.nix

		../modules/system-modules/syncthing.nix

		../modules/system-modules/network/sshd.nix
		../modules/system-modules/network/sshd-xorg.nix

  ];
}