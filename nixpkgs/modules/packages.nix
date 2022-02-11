{ pkgs, ... }:

{

  home.packages = with pkgs; [
    # office
    calibre
    foliate
    joplin-desktop
    libreoffice
    pandoc
    # multimedia
    ffmpeg
    gcolor3
    audacity
    gimp
    imagemagick
    libsForQt5.kdenlive
    krita
    obs-studio
    youtube-dl
    # misc
    bitwarden
    discord
    slack
    spotify
    tdesktop
    zoom-us
  ];

  services.syncthing = {
    enable = true;
  };

}
