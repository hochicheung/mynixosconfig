{
  imports = [
    # ./dns-relay.nix
  ];

  # https://nixos.wiki/wiki/Encrypted_DNS
  networking = {
    nameservers = [
		"1.1.1.1"
		"1.0.0.1"
		"8.8.8.8"
		"8.8.4.4"
		];
    # resolvconf.enable = true;
    # resolvconf.useLocalResolver = true;

    # If using dhcpcd:
    dhcpcd.extraConfig = "nohook resolv.conf";
    # If using NetworkManager:
    # networkmanager.dns = "none";
  };
	services.resolved.enable = false;
}
