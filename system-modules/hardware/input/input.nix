{
	services.xserver.libinput.enable = true;
	services.xserver.libinput.tapping = true;

	imports = [
	  ./no-mouse-acceleration.nix
	];
}
