{pkgs, stdenv, callPackage, ...}:


{
  system.stateVersion = "21.05";

	imports = [
	  ./device.nix
		./hardware-configuration.nix
		./system-modules/network/dns.nix
	];
	
	nix = {
		# Don't garbage collect nix-shell
		extraOptions = ''
		keep-outputs = true
		keep-derivations = true
		'';
	
		# Ability to use custom channels in home-manager
  	trustedUsers = [ "root" "samcheung" ];
	};

	nixpkgs.config = {
	  allowUnfree = false;
	};

	boot = {
	  # clean /tmp on boot
	  cleanTmpDir = true;

		# make /tmp be in ram
		tmpOnTmpfs = true;
	};

	i18n.defaultLocale = "en_US.UTF-8";
	i18n.extraLocaleSettings = { "TIME_STYLE" = "iso"; };

	time.timeZone = "Europe/Stockholm";

	networking.networkmanager.enable = true;

	services.emacs.defaultEditor = true;

	environment.systemPackages = with pkgs; [
	  htop

		git

		networkmanager
		# networkmanagerapplet

		wget

		chromium

		killall
	];
}

