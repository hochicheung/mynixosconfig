{
 description = "NixOS Flake configuration";

 inputs = {
  nixpkgs.url = "github:nixos/nixpkgs/nixos-24.05";

  home-manager = {
   url = "github:nix-community/home-manager/release-24.05";
	 # `inputs.nixpkgs` of home-manager is kept consistent with `inputs.nixpkgs` of the current flake,
	 # to avoid problems caused by different versions of nixpkgs.
	 inputs.nixpkgs.follows = "nixpkgs";
  };
 };

 outputs = inputs@{ nixpkgs, home-manager, ...}: {
  nixosConfigurations = {
	 pwni = nixpkgs.lib.nixosSystem {
	  system = "x86_64-linux";
		modules = [
		 ./configuration.nix

		 # make home-manager as a module of nixos
		 # so that home-manager configuration will be deployed
		 # automatically when executing `nixos-rebuild`
     home-manager.nixosModules.home-manager
		 {
		  home-manager.useGlobalPkgs = true;
			home-manager.useUserPackages = true;
			home-manager.users.samcheung = import ./home.nix;

			# Optionally use home-manager.extraSpecialArgs to pass
			# arguments to home.nix
		 }
		];
	};
 };
}
