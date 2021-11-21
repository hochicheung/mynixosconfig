{
  services.syncthing.enable = true;
  services.syncthing.dataDir = "/home/samcheung/.cache/syncthing/.config/";
  services.syncthing.configDir = "/home/samcheung/.cache/syncthing";

  services.syncthing.user = "samcheung";
  services.syncthing.group = "users";

  services.syncthing.relay.enable = false;
  services.syncthing.openDefaultPorts = true;
}