{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
      ./packages.nix
      ./users.nix
      ./services.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;


  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "America/New_York";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "us";
  };


  system.stateVersion = "20.09";


  sound.enable = true;
  hardware.pulseaudio.enable = true;


  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
   

}


