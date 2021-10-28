let
	pass = null;
in
{
	imports = [
	  # ./system-configs/msi-laptop.nix

		# ./system-modules/network/sshd.nix
	];

networking.hostName = "nixos";

users = {
	users.samcheung = {
	  group = "users";
		isNormalUser = true;
		uid = 1000;
		hashedPassword = pass;
		extraGroups = [ "wheel" "networkmanager" "video"];
	};

	users.root = {
	  hashedPassword = pass;
	};

	mutableUsers = false;
};

# SSH
services.openssh.listenAddresses = [
  {
	  addr = "192.168.1.1"; port = 22;
  }
];

# Syncthing
services.syncthing.relay = {
  enable = true;
	port = ;
	statusPort = ;
	networking.firewall.allowedTCPPorts = [];
};
