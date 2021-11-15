{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
	  xorg.setxkbmap
	  xorg.xkbcomp

	  xorg.xrandr
		autorandr
	];

	services.xserver = {
	  enable = true;
    layout = "us";
    xkbVariant = "altgr-intl";
    xkbOptions = "caps:escape";

		# Allow exwm to work
    displayManager.sessionCommands =
      "${pkgs.xorg.xhost}/bin/xhost +SI:localuser:$USER";

		displayManager.session = [
			{
			  manage = "desktop";
        name = "xterm";
        start = ''
          ${pkgs.xterm}/bin/xterm -ls &
          waitPID=$!
        '';
      }
    ];

    desktopManager.session = [
      {
        manage = "desktop";
        name = "emacs";
        start = ''
          emacs &
          waitPID=$!
        '';
      }
		];

		displayManager.defaultSession = "emacs";
	};
}
