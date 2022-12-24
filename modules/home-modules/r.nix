{ pkgs, config, ... }:

{
    nixpkgs.config.packageOverrides = super: let self = super.pkgs; in
    {

        rEnv = super.rWrapper.override {
            packages = with self.rPackages; [
                devtools
                ggplot2
                reshape2
                yaml
                optparse
                ];
        };
    };

		home.packages = with pkgs; [
		  rEnv
		];
}
