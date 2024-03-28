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
<<<<<<< HEAD
    org-roam
    org-roam-bibtex
    ebib
    org-ref
    helm-bibtex
    org-noter
    org-roam-ui
    deft
    anki-editor
=======
    projectile
    pulseaudio-control
    elpy
    flycheck
    ox-twbs
    gnuplot
    rainbow-delimiters
    aggressive-indent
		org-bullets
		company
		yasnippet
		hide-mode-line
		outshine
		which-key
		avy
		helm
		olivetti
		magit
		evil
		org
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
>>>>>>> origin/master
  ];
}

