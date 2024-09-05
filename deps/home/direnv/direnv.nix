{ pkgs, ... }:
{
  programs.direnv = {
    enable = true;
    enableBashIntegration = true;
  };

	programs.bash = {
	  bashrcExtra = ''
		eval "$(direnv hook bash)"
		'';
	};
}