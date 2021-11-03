{ pkgs, ... }:
{
  programs.ssh = {
    enable = true;
    controlMaster = "yes";

    matchBlocks = {
        "github.com" = {
          identityFile = "~/.ssh/id_rsa-public-github";
          identitiesOnly = true;
          user = "hochicheung";
        };
				"192.168.1.???" = {
          identityFile = "~/.ssh/id_nucserver";
          identitiesOnly = true;
          user = "samcheung";
				};
      };
  };
}