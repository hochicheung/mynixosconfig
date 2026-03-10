{
	networking.wireless.enable = true;
	networking.wireless.userControlled.enable = true;
	networking.dhcpcd.enable = true;

  imports = [
	  /etc/nixos/private-nixos-config/system/network/wireless/wireless-networks.nix
  ];
}
