# To lock a version of nixpkgs and emacs-overlay
let
  new-pkgs =
    import (builtins.fetchGit {
      name = "nixpkgs-emacs";
      url = "https://github.com/nixos/nixpkgs/";
      ref = "refs/heads/nixpkgs-unstable";
      rev = "51d906d2341c9e866e48c2efcaac0f2d70bfd43e"; # refs/heads/nixpkgs-unstable
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

# Specify emacs-version
  imports = [ ./pkgs.nix ];
  home.packages = with new-pkgs; with new-pkgs.emacsPackages; [
    (emacsGit.overrideAttrs
      (old : {
        name = "emacs-29";
        version = "unstable-2023-10-22";
        src = fetchFromGitHub {
          repo = "emacs";
          owner = "emacs-mirror";
          sha256 = "0v89zics7xd7fwixwnawcdwc2kd7jn4xhh10hgfhpzd5l89sp57z";
          rev = "4ff0c738d050942932e73c627a7d6e31ca5c6244";
        };
    }))

    #emacsPackage
    gcc
    libgccjit

    exec-path-from-shell
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

