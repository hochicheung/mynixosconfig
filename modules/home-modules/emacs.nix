let
  new-pkgs =
    import (builtins.fetchGit {
      name = "nixpkgs-emacs";
      url = "https://github.com/nixos/nixpkgs/";
      ref = "refs/heads/nixpkgs-unstable";
      rev = "37b97ae3dd714de9a17923d004a2c5b5543dfa6d";
    })
      {
        overlays = [
          (import (builtins.fetchTarball {
            url =
              "https://github.com/nix-community/emacs-overlay/archive/fc341b52fe5837ef313cfe79eea7e2a05b6efffa.tar.gz";
          }))
        ];
      };
in
{

  home.packages = with new-pkgs; with new-pkgs.emacsPackages; [
								(emacsGit.overrideAttrs
								(old : {
										 name = "emacs-29";
										 version = "unstable-2023-01-13";
										 src = fetchFromGitHub {
										 		 repo = "emacs";
												 owner = "emacs-mirror";
												 sha256 = "MhmLMXdd45hE2CEsOzI00LozoDvHOopRVB5fN3UbRyY=";
												 rev = "dc33a122230adbfa37926f4eb19c0620b3affd85";
												 };
												 }))
		vterm
		pdf-tools
    #emacsPackage
  ];
}

