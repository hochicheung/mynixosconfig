# https://github.com/NixOS/nixos-hardware/blob/master/common/pc/laptop/acpi_call.nix
{ config, ... }:
{
  boot = {
    kernelModules = [ "acpi_call" ];
    extraModulePackages = with config.boot.kernelPackages; [ acpi_call ];
  };
}