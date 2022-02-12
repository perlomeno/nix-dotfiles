{ config, pkgs, ... }:

{
  networking.hostName = "ap-desktop";

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
