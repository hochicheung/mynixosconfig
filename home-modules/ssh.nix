{ pkgs, ... }:
{
  programs.ssh = {
    enable = true;
    controlMaster = "yes";

    matchBlocks =
      {
        "github.com" = {
          identityFile = "~/.ssh/id_rsa-public-github";
          identitiesOnly = true;
          user = "hochicheung";
        };
      };
  };
}