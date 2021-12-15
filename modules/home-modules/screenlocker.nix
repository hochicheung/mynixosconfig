{ pkgs, ... }:

{
	services.screen-locker = {
	  enable = true;
		lockCmd = "physlock";
		xautolock.enable = true;
	  inactiveInterval = 20;
	};
}