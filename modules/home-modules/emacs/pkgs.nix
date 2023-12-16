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

    (emacsPackages.trivialBuild {
      pname = "anki-editor";
      version = "unstable-2023-04-13";

      src = fetchFromGitHub {
        owner = "orgtre";
        repo = "anki-editor";
        sha256 = "0p2v7cdcpb6v3z09qm42mxbcs4mzcsqkwgvrp58ww2895pii048r";
        rev = "ab7b33b48c78cb909391622eeffb893829b382d7";
       };
    })
  ];
}
