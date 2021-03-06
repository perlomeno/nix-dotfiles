{ config, pkgs, lib, ... }:

{
  home.packages = with pkgs; [
    iosevka
  ];

  dconf.settings = {
  
    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-temperature = lib.hm.gvariant.mkUint32 3700;
    };
    
    "org/gnome/shell" = {
      app-picker-layout = lib.hm.gvariant.mkTuple [];
      disable-user-extensions = false;
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" ];
      favorite-apps = [
        "org.gnome.Console.desktop"
        "chromium-browser.desktop"
        "emacsclient.desktop"
        "nautilus.desktop"
      ];
    };

    "org/gnome/desktop/interface" = {
      monospace-font-name = "Iosevka 12";
    };

    "org/gnome/desktop/background" = {
      picture-uri = "file:///home/ap/Dotfiles/nixpkgs/pictures/wallpaper.png";
      picture-options = "zoom";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      tap-to-click = true;
    };
  };
}
