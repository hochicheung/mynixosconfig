{ pkgs, ... }:
{
  programs.git = {
    enable = true;

		userName = "Sam Cheung";
		userEmail = "hochi.cheung.sam@gmail.com";
		extraConfig = {
			submodule = { recurse = true; };
			init.defaultBranch = "master";
		};
  };
}
