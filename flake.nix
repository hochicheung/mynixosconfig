{
  description = "NixOS Flake configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/master";
	    # `inputs.nixpkgs` of home-manager is kept consistent with `inputs.nixpkgs` of the current flake,
	    # to avoid problems caused by different versions of nixpkgs.
	    inputs.nixpkgs.follows = "nixpkgs";
    };

    # my-secrets.url = "git+ssh://git@github.com:user/privaterepo.git";
  };
  # outputs = { self, nixpkgs, home-manager, my-secrets, ...}: {

  outputs = { self, nixpkgs, home-manager, ...}: {
    nixosConfigurations = {
      # PWNI TP250
	    pwni = nixpkgs.lib.nixosSystem {
	      system = "x86_64-linux";
	      modules = [
          /etc/nixos/private-nixos-config/user/pwni/system.nix
   
		      #	make home-manager as a module of nixos
		      # so that home-manager configuration will be deployed
		      # automatically when executing `nixos-rebuild`
  
          home-manager.nixosModules.home-manager
		      {
		        home-manager.useGlobalPkgs = true;
			      home-manager.useUserPackages = true;
            # home-manager.extraSpecialArgs = { inherit my-secrets; };
			      # Optionally use home-manager.extraSpecialArgs to pass
			      # arguments to home.nix

			      home-manager.users.samcheung = import ./private-nixos-config/user/pwni/home.nix;
		      }
		    ];
	    };
      # RMAN = MSI
	    rman = nixpkgs.lib.nixosSystem {
	      system = "x86_64-linux";
	      modules = [
          /etc/nixos/private-nixos-config/user/rman/system.nix
           
		      #	make home-manager as a module of nixos
		      # so that home-manager configuration will be deployed
		      # automatically when executing `nixos-rebuild`
  
          home-manager.nixosModules.home-manager
		      {
		        home-manager.useGlobalPkgs = true;
			      home-manager.useUserPackages = true;
            # home-manager.extraSpecialArgs = { inherit my-secrets; };
			      # Optionally use home-manager.extraSpecialArgs to pass
			      # arguments to home.nix

			      home-manager.users.samcheung = import ./private-nixos-config/user/rman/home.nix;
		      }
		    ];
	    };
    };
  };
}
