{ config, pkgs, ...}:

{
	imports = [
		../acpi_call.nix
	];

	environment.systemPackages = with pkgs; [
	  tpacpi-bat
	];
}
