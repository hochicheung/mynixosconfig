# Generate hashedpassword with ~mkpasswd -m sha-512~
let
	pass = null;
in
{
	imports = [
		# ../hw-configs/laptop-msi.nix
 
		# ../modules/system-modules/network/sshd.nix
		# ../modules/system-modules/network/sshd-xorg.nix
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
}
