{pkgs, stdenv, callPackage, ...}:


{
  system.stateVersion = "23.05";
	imports = [
		./hardware-configuration.nix

	  ./device/device.nix
		#./modules/system-modules/network/dns.nix
	];

	nix = {
		settings = {
		# Don't garbage collect nix-shell
		# extraOptions = ''
		# keep-outputs = true
		# keep-derivations = true
		# '';
	
		# Ability to use custom channels in home-manager
  	trusted-users = [ "root" "samcheung" ];

    experimental-features = [ "nix-command" "flakes" ];
		};
	};

	nixpkgs.config = {
	  allowUnfree = true;
	};

  boot.tmp = {
    # Clean /tmp on boot
    cleanOnBoot = true;
    # Make /tmp be in ram
    useTmpfs = true;
    tmpfsSize = "95%";
  };

  zramSwap = {
    enable = true;
    memoryPercent = 50;
  };

  nix.settings.max-jobs = 1;
  nix.settings.cores = 1;

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

