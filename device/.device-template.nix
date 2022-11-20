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
}
