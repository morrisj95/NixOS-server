{  config, ... }:
{
  networking.hostName = "nixos-server";
  networking.wireless.enable = false;  # Enables wireless support via wpa_supplicant.
  networking.firewall.allowPing = false;
  networking.firewall.enable = true;
  networking.firewall.allowedTCPPorts = [ 2223 ];
  networking.useDHCP = false;
  networking.interfaces.enp4s0.useDHCP = true;
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.firewall.enable = false;
}

