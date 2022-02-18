{ pkgs, ... }:

{

  home.packages = with pkgs; [
    clang-tools
    iosevka
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

  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-extensions; [
      github.github-vscode-theme
      ms-python.python
      ms-python.vscode-pylance
      ms-toolsai.jupyter
      ms-vscode.cpptools
    ];
  };

}
