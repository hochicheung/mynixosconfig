{ pkgs, ...}:
{
	boot.loader.timeout = 1;

	imports = [
	  ../../system-modules/xorg/xorg.nix
	  ../../system-modules/audio/pulse.nix
	  # ../../system-modules/audio/pipewire.nix
	  ../../system-modules/hardware/backlight.nix
	  ../../system-modules/wakelock.nix
	  #../../system-modules/hardware/file-systems/ntfs-support.nix
	  ../../system-modules/hardware/input/input.nix
	  #../../system-modules/auto-upgrade.nix
	  #../../system-modules/fonts/font.nix
	  #../../system-modules/polkit.nix
	];
}
