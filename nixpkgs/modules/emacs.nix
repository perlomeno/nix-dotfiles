{ pkgs, ... }:

{

  home.packages = with pkgs; [
    clang-tools
    python39Packages.python-lsp-server
    python39Packages.pyflakes
    racket
    (texlive.combine { inherit (texlive) scheme-small wrapfig capt-of mhchem chemfig; })
  ];

  programs.emacs = {
    enable = true;
  };

  xdg.configFile."emacs".recursive = true;
  xdg.configFile."emacs".source = ../configs/emacs;

}
