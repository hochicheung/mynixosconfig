{ pkgs, ... }:
{
  imports = [
	../modules/home-modules/r.nix
	../modules/myprivatenixosconfig/home-modules/mailaccount.nix
	../modules/home-modules/gpg.nix

	../modules/home-modules/emacs/emacs.nix

	../modules/myprivatenixosconfig/ssh.nix
  ];

  home.packages = with pkgs; [
								qbittorrent
								mpv
								brave
								update-nix-fetchgit
  ];

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
