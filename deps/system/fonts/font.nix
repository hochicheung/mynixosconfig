{ pkgs, ... }:
{
	fonts.packages = with pkgs; [
		# (import ./scientifica.nix)
		mplus-outline-fonts.githubRelease

		iosevka
		
		# ultimate-oldschool-pc-font-pack

	  dejavu_fonts
		
		scientifica

		ibm-plex
	];

	fonts.fontconfig.includeUserConf = true;

	fonts.fontconfig.defaultFonts.monospace = ["IBM Plex Mono"];
	# fonts.fontconfig.defaultFonts.sansSerif = [""];
	# fonts.fontconfig.defaultFonts.serif = [""];

  fonts.fontconfig.localConf = ''
    <?xml version="1.0"?>
    <!DOCTYPE fontconfig SYSTEM "fonts.dtd">
    <fontconfig>
      <match target="font">
        <edit name="fontfeatures" mode="append">
          <string>zero on</string>
        </edit>
      </match>
    </fontconfig>'';
}
