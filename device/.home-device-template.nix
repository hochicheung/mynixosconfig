{ pkgs, ... }:
{
  imports = [
    # ../modules/home-modules/email.nix
    # ../modules/home-modules/games/cataclysm-dda/cataclysm-dda-git-latest.nix
    # ../modules/home-modules/emacs.nix
    # ../modules/home-modules/art.nix
  ];

	# nixpkgs.config.allowUnfree = false;

  # home.packages = with pkgs; [
  		# discord
			# keepassxc
			# qbittorrent
			# mupdf
  # ];

	programs.ssh = {
    enable = true;
    controlMaster = "yes";

    matchBlocks = {
      "github.com" = {
          identityFile = "~/.ssh/id_rsa-public-github";
          identitiesOnly = true;
          user = "hochicheung";
      };
		  "192.168.1.*" = {
        identityFile = "~/.ssh/id_nucserver";
        identitiesOnly = true;
        user = "samcheung";
	    };
		};
	};

  # programs.git = {
  #   signing = {
  #     key = "";
  #     signByDefault = true;
  #   };
  # };

  # accounts.email = {
  #   accounts.main-gmail = {
  #     passwordCommand = "echo gmail-app-password";
  #   };
  # };
}