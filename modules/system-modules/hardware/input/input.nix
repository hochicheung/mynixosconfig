{
	services.xserver.libinput.enable = true;
	services.xserver.libinput.touchpad.tapping = true;

	imports = [
	  ./no-mouse-acceleration.nix
	];
}
