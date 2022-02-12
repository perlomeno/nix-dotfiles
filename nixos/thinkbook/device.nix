{ config, pkgs, ... }:

{

  networking.hostName = "thinkbook";

  boot.loader = {
    efi.canTouchEfiVariables = true;
    grub = {
      enable = true;
      version = 2;
      device = "nodev";
      efiSupport = true;
      useOSProber = true;
      enableCryptodisk = true;
    };
  };

}
