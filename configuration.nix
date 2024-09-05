{pkgs, stdenv, callPackage, ...}:

{
  system.stateVersion = "23.11";
	imports = [
	  ./private-nixos-config/user/laptop-tp250/system.nix
	];

	nix = {
		settings = {
		  # Don't garbage collect nix-shell
		  # extraOptions = ''
		  # keep-outputs = true
		  # keep-derivations = true
		  # '';

  		max-jobs = 1;
  		cores = 1;

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

	# i18n.defaultLocale = "en_US.UTF-8";
	# i18n.extraLocaleSettings = { "TIME_STYLE" = "iso"; };

	time.timeZone = "Europe/Stockholm";
}

