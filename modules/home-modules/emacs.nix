{ pkgs, ... }:
{
	nixpkgs.overlays = [
    (import (builtins.fetchTarball {
      url =
        "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
      # "https://github.com/nix-community/emacs-overlay/archive/b14b8b133d98c923071ec2e20eff3c76bd80d173.tar.gz";
    }))
  ];

  home.packages = with pkgs; [
		emacsUnstable

	  emacsPackages.vterm
		emacsPackages.pdf-tools
	];
}