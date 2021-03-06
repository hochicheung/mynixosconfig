{ config, pkgs, ... }:

{
	#home.stateVersion = "22.05";
	home.username = "samcheung";
	home.homeDirectory = "/home/samcheung";

	programs.home-manager.enable = true;
	#programs.home-manager.path = "https://github.com/rycee/home-manager/archive/master.tar.gz"

	#nixpkgs.config = {
		# allowBroken = true;
		# allowUnfree = false;
	#};

	imports = [
	  ./device/home-device.nix

		./modules/home-modules/git.nix

		./modules/home-modules/cached-nix-shell.nix
		./modules/home-modules/direnv/direnv.nix
		./modules/home-modules/direnv/nix-direnv.nix

		./modules/myprivatenixosconfig/ssh.nix
	];

	home.packages = with pkgs; [
		qutebrowser

		pavucontrol

		lm_sensors

		ripgrep

		atool
		unzip

		w3m

		aspell
		aspellDicts.sv
		aspellDicts.en

		xlayoutdisplay

		mupdf

		cmake

		qbittorrent
		
		shellcheck

		pwgen

		xclip

		recoll

		gcc

		gnumake

		gnuplot

		anki

		graphviz
		sqlite
		imagemagick
		libvterm
		libtool
	];
}
