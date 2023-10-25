{ pkgs, ...}:

# To update, update-nix-fetchgit pkgs.nix
# Some reason tabs won't work, replace all tabs with spaces
{
  home.packages = with pkgs; [
    (emacsPackages.trivialBuild {
      pname = "org-bars";
      version = "unstable-2021-11-11";

      src = fetchFromGitHub {
        owner = "tonyaldon";
        repo = "org-bars";
        sha256 = "1lh36b86s0jmqvp363cw9z8zpx6qqn9hpni95q34qi9a41f36rwf";
        rev = "59ff8976ce789c0c594fd4756cbeb5354b6178d2";
      };

      packageRequires = with emacsPackages; [ s dash ];
    })
  ];
}
