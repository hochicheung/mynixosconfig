{
  imports = [
    ./sshd.nix
  ];

  services.openssh.settings.X11Forwarding = true;
}
