{pkgs, stdenv, callPackage, ...}:


{
  system.stateVersion = "23.05";
	imports = [
		./hardware-configuration.nix

	  ./device/device.nix
		#./modules/system-modules/network/dns.nix
	];

	nix = {
		# Don't garbage collect nix-shell
		extraOptions = ''
		keep-outputs = true
		keep-derivations = true
		'';
	
		# Ability to use custom channels in home-manager
  	settings.trusted-users = [ "root" "samcheung" ];
	};

	nixpkgs.config = {
	  allowUnfree = true;
	};

	boot.tmp = {
	  # clean /tmp on boot
	  useTmpfs = true;

		# make /tmp be in ram
		cleanOnBoot = true;
	};

	# i18n.defaultLocale = "en_US.UTF-8";
	# i18n.extraLocaleSettings = { "TIME_STYLE" = "iso"; };

	time.timeZone = "Europe/Stockholm";

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

