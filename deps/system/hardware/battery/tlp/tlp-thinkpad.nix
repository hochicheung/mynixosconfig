{ config, pkgs, ...}:
# https://linrunner.de/tlp/settings/bc-vendors.html

{
	imports = [
		# enables battery recalibration for kernels before 5.17
		../../acpi_call.nix
	];

	environment.systemPackages = with pkgs; [
	  tpacpi-bat
	];

  services.tlp = {
		settings = {
			# Temporarily force full charge run 'tlp fullcharge'
		  START_CHARGE_THRESH_BAT0 = 50;
		  STOP_CHARGE_THRESH_BAT0  = 85;
		  START_CHARGE_THRESH_BAT1 = 50;
		  STOP_CHARGE_THRESH_BAT1  = 85;
 		};
	};
}
