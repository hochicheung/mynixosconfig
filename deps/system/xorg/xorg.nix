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
    xkb.layout = "us";
    xkb.variant = "altgr-intl";
    xkb.options = "caps:escape";

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

	};
	services.displayManager.defaultSession = "emacs";
}
