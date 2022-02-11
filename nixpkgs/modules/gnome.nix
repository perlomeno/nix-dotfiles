{ config, pkgs, ... }:

{
  dconf.settings = {
    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = true;
      night-light-temperature = "uint32 5500";
    };
    "org/gnome/shell" = {
      disable-user-extensions = false;
      enabled-extensions = [ "appindicatorsupport@rgcjonas.gmail.com" ];
      favorite-apps = [
        "gnome-terminal.desktop"
        "chromium-browser.desktop"
	"emacs.desktop"
        "nautilus.desktop"
        "evince.desktop"
      ];
      app-picker-layout = [];
    };
  };
}
