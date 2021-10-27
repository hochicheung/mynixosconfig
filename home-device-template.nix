{ pkgs, ... }:
{
  imports = [
    # ./home-modules/email.nix
    # ./home-modules/games/cataclysm-dda/cataclysm-dda-git-latest.nix
    # ./home-modules/emacs.nix
    # ./home-modules/art.nix
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