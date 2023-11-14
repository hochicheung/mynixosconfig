# To update, update-nix-fetchgit emacs.nix
# To lock a version of nixpkgs and emacs-overlay
let
  new-pkgs =
    import (builtins.fetchGit {
      name = "nixpkgs-emacs";
      url = "https://github.com/nixos/nixpkgs/";
      ref = "refs/heads/nixpkgs-unstable";
      rev = "ec750fd01963ab6b20ee1f0cb488754e8036d89d"; # refs/heads/nixpkgs-unstable
    })
      {
        overlays = [
          (import (builtins.fetchTarball {
            url =
              "https://github.com/nix-community/emacs-overlay/archive/master.tar.gz";
          }))
        ];
      };
in
{

  # Specify emacs-version
  imports = [ ./pkgs.nix ];
  home.packages = with new-pkgs; with new-pkgs.emacsPackages; [
    #emacsPackage
    gcc
    libgccjit

    deft
    vterm
    pdf-tools
    anki-editor
    org-roam-ui
    org-noter
    helm-bibtex
    org-roam-bibtex
    org-ref
    ebib
    org-roam
    emacsql
    emacsql-sqlite
    projectile
    pulseaudio-control
    elpy
    flycheck
    ox-twbs
    gnuplot
    rainbow-delimiters
    aggressive-indent
  ];
}

