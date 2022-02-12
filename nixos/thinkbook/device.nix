{ config, pkgs, ... }:

{

  networking.hostName = "thinkbook";

  boot.loader = {
    efi.canTouchEfiVariables = false;
    grub = {
      enable = true;
      version = 2;
      device = "nodev";
      efiSupport = true;
      efiInstallAsRemovable = true;
      useOSProber = true;
      enableCryptodisk = true;
    };
  };

}
