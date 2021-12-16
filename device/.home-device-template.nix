{ pkgs, ... }:
{
  imports = [
    # ../modules/home-modules/email.nix
    # ../modules/home-modules/games/cataclysm-dda/cataclysm-dda-git-latest.nix
    # ../modules/home-modules/emacs.nix
    # ../modules/home-modules/art.nix
  ];

  # home.packages = with pkgs; [

  # ];

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