{ config, pkgs, ... }:
{
	imports = [
	  ./wakelock.nix
	];

  # Ignore closing lid event
  services.logind.settings.Login = {
    	HandleLidSwitchDocked = "ignore";
    	HandleLidSwitch = "ignore";
    	HandlePowerKey="suspend";
	HandlePowerKeyLongPress="poweroff";

	# When idle, suspend
    	IdleAction = "suspend";
    	IdleActionSec = 60;
  };

	programs.xss-lock = {
	  enable = true;

		lockerCommand = "physlock";
	};
}
