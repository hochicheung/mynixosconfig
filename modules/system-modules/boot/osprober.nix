{ config, pkgs, ...}:

{
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;
}
