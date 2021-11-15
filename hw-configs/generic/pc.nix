{ pkgs, ...}:
{
	boot.loader.timeout = 1;

	imports = [
	  ../../modules/system-modules/xorg/xorg.nix

	  ../../modules/system-modules/audio/pulse.nix
	  # ../../modules/system-modules/audio/pipewire.nix

	  ../../modules/system-modules/wakelock.nix

	  ../../modules/system-modules/hardware/input/input.nix

	  ../../modules/system-modules/fonts/font.nix

	  #../../modules/system-modules/hardware/file-systems/ntfs-support.nix

	  #../../modules/system-modules/auto-upgrade.nix

	  #../../modules/system-modules/polkit.nix
	];
}
