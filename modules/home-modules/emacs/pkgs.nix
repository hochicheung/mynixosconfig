{ pkgs, ...}:

# To update, update-nix-fetchgit pkgs.nix
# For some reason tabs won't work, replace all tabs with spaces
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
      pname = "rainbow-delimiters";
      version = "unstable-2023-08-30";

      src = fetchFromGitHub {
        owner = "Fanael";
        repo = "rainbow-delimiters";
        sha256 = "10ky6b7vy1w7iyn7qsqd1gswy8gdjc69zs0s71nr7swb9xdm3hr5";
        rev = "f40ece58df8b2f0fb6c8576b527755a552a5e763";
      };
    })
  ];
}
