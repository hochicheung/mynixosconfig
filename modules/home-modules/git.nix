{ pkgs, ... }:
{
  programs.git = {
    enable = true;
		extraConfig = {
		  user = { name = "Sam Cheung"; email = "hochi.cheung.sam@gmail.com"; };
			submodule = { recurse = true; };
		};
  };
}