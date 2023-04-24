{ config, pkgs, callPackage, ... }:
{
  	home.packages = with pkgs; [
			emacs-gtk

	  	emacsPackages.vterm
		  emacsPackages.pdf-tools

			anki

			aspell
			aspellDicts.sv
			aspellDicts.en
		  graphviz
		  imagemagick
		  libvterm
		  libtool
		];
}
