{ config, pkgs, ... }:
{
	imports = [
	  ./wakelock.nix
	];

  # Ignore closing lid event
  services.logind.lidSwitch = "ignore";
  services.logind.lidSwitchDocked = "ignore";
  
  services.logind.extraConfig = ''
    HandlePowerKey=suspend

		# When idle, suspend
    IdleAction=suspend
    IdleActionSec=60
  '';

	programs.xss-lock = {
	  enable = true;

		lockerCommand = "physlock";
	};
}
