{
	networking.wireless.enable = true;
	networking.wireless.userControlled.enable = true;

	networking.wireless.environmentFile = "/etc/nixos/modules/myprivatenixosconfig/secrets/wireless.env";

	imports = [
	 	../../myprivatenixosconfig/secrets/wireless-networks.nix
	];
}
