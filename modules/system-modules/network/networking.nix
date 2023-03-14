{
	networking.wireless.enable = true;
	networking.wireless.userControlled.enable = true;

	networking.wireless.environmentFile = "/etc/nixos/modules/myprivatenixosconfig/secrets/wireless.env";

	networking.wireless.networks = {
		"SamC-Network".psk = "@PERS_HOTSPOT@";
		"SamC-Network".priority = 2;

		"eduroam".auth = ''
		  key_mgmt=WPA-EAP
			eap=PEAP
			identity="samch@kth.se"
			password="@KTH_EDUROAM@"
			phase2="auth=MSCHAPV2"
		'';
		"eduroam".priority = 1;
	};
}
