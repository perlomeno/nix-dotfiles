{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./device.nix
    ];

  #
  # Boot loader.
  #

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  #
  # Networking
  #

  networking.networkmanager.enable = true;

  #
  # Localization
  #

  time.timeZone = "Europe/Rome";
  i18n.defaultLocale = "it_IT.UTF-8";
  console = {
    font = "Lat2-Terminus16";
    keyMap = "it";
  };

  #
  # Desktop
  #

  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
    layout = "it";
    xkbOptions = "ctrl:swapcaps";
    libinput.enable = true;
  };

  #
  # Users
  #

  users.users.ap = {
    description = "Alessandro Perlo";
    isNormalUser = true;
    extraGroups = [ "wheel" "networkmanager" "libvirtd" ];
  };

  #
  # Packages
  #

  environment.systemPackages = with pkgs; [
    celluloid
    chromium
    git
    gnomeExtensions.appindicator
    pika-backup
    rhythmbox
    virt-manager
  ];

  environment.gnome.excludePackages = with pkgs; [
    epiphany
    gnome-tour
    gnome.gedit
    gnome.gnome-contacts
    gnome.gnome-maps
    gnome.gnome-music
    gnome.gnome-software
    gnome.gnome-weather
    gnome-photos
    gnome.totem
    gnome.yelp
  ];

  programs.neovim = {
    enable = true;
    configure = {
      packages.myVimPackage = with pkgs.vimPlugins; {
        start = [vim-nix];
      };
    };
  };

  nixpkgs.config.allowUnfree = true;

  #
  # Services
  #

  virtualisation.libvirtd.enable = true;

  services.openssh.enable = true;

  services.printing = {
    enable = true;
    drivers = [ pkgs.epson-escpr ];
  };

  xdg.portal.enable = true;
  services.flatpak.enable = true;

  nix.extraOptions = ''
    keep-outputs = true
    keep-derivations = true
  '';

  system.stateVersion = "21.11";

}

