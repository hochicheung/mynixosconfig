{
	services.libinput.enable = true;
	services.libinput.touchpad.tapping = true;

	imports = [
	  ./no-mouse-acceleration.nix
	];
}
