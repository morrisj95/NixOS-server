{ config, pkgs, ... }:
{
  imports =
  [
    ./plex-docker.nix
  ];

  services.openssh.enable = true;
  services.openssh.permitRootLogin = "yes";
  services.openssh.ports = [ 2223 ];
  virtualisation.docker.enable = true;
} 
