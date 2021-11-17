{ config, pkgs, ... }:
{
  # Only turn off screen on lid close
  services.logind.lidSwitch = "ignore";
  services.logind.lidSwitchDocked = "ignore";
  
  # Powerswitch locks, Idle 
  services.logind.extraConfig = ''
    HandlePowerKey=suspend
    IdleAction=suspend
    # IdleActionSec=30
  '';
}
