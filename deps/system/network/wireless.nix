{
	networking.wireless.enable = true;
	networking.wireless.userControlled.enable = true;
	networking.dhcpcd.enable = true;

	imports = [
	  ../../../private-nixos-config/system/network/wireless/wireless-networks.nix
	];

	networking.wireless.environmentFile = "/etc/nixos/private-nixos-config/system/network/wireless/wireless.env";
}
