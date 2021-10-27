{ pkgs, ... }:

{
	home.stateVersion = "20.09";
	home.username = "samcheung";
	home.homeDirectory = "/home/samcheung";

	programs.home-manager.enable = true;

	nixpkgs.config = {
		# allowBroken = true;
		# allowUnfree = false;
	};

	imports = [
	  ./home-device.nix

		./home-modules/git.nix

		./home-modules/cached-nix-shell.nix
		./home-modules/direnv/direnv.nix
		./home-modules/direnv/nix-direnv.nix

		./home-modules/ssh.nix
	];

	home.packages = with pkgs; [
	  git

		qutebrowser

		pavucontrol

		lm-sensors

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

		discord

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