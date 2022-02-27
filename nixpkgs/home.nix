{ config, pkgs, ... }:

{

  home.username = "ap";
  home.homeDirectory = "/home/ap";

  home.stateVersion = "21.11";

  programs.home-manager.enable = true;

  imports = [
    ./modules/bash.nix
    ./modules/development.nix
    ./modules/gnome.nix
    ./modules/packages.nix
  ];

}
