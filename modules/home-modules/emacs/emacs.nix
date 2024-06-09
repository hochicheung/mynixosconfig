# To update, update-nix-fetchgit emacs.nix
# To lock a version of nixpkgs and emacs-overlay
let
  new-pkgs =
    import (builtins.fetchGit {
      name = "nixpkgs-emacs";
      url = "https://github.com/nixos/nixpkgs/";
      ref = "refs/heads/nixpkgs-unstable";
      rev = "e2dd4e18cc1c7314e24154331bae07df76eb582f"; # refs/heads/nixpkgs-unstable
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

  imports = [ ./pkgs.nix ];
  home.packages = with new-pkgs; with new-pkgs.emacsPackages; [
    gcc
    libgccjit

    evil
    undo-tree
    evil-surround
    spacemacs-theme
    vertico
    orderless
    ivy
    counsel
    swiper
    ivy-rich
    hydra
    su
    envrc
    magit
    olivetti
    helm
    avy
    which-key
    outshine
    hide-mode-line
    yasnippet
    company
    org-bullets
    #org-bars
    aggressive-indent
    pdf-tools
    #rainbow-delimeters
    gnuplot
    ox-twbs
    flycheck
    elpy
    pulseaudio-control
    vterm
    projectile
    emacsql
    emacsql-sqlite
    org-roam
    org-roam-bibtex
    ebib
    org-ref
    helm-bibtex
    org-noter
    org-roam-ui
    deft
    anki-editor
  ];
}

