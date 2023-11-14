# Generate hashedpassword with ~mkpasswd -m sha-512~
let
	pass = null;
in
{
	imports = [
		 ../hw-configs/laptop-tp250.nix
 
		 ../modules/system-modules/network/sshd.nix
		 ../modules/system-modules/network/sshd-xorg.nix
		 ../modules/system-modules/hardware/printer.nix
		 ../modules/system-modules/virtualisation/virtualbox.nix

		 # ../modules/system-modules/boot/osprober.nix
	];

  networking.hostName = "nixos";
  
  users = {
	  users.samcheung = {
	    group = "users";
		  isNormalUser = true;
		  uid = 1000;
		  hashedPassword = pass;
		  extraGroups = [ "wheel" "video"];
	  };
  
	  users.root = {
	    hashedPassword = pass;
	  };
  
	  mutableUsers = false;
  };
}
