{ pkgs, ... }:
{
  programs.git = {
    enable = true;

		settings = {
			user.name = "Sam Cheung";
			user.email = "hochi.cheung.sam@gmail.com";
			submodule = { recurse = true; };
			init.defaultBranch = "master";
		};
  };
}
