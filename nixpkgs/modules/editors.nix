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
      # python stuff
      ms-python.python
      ms-python.vscode-pylance
      ms-toolsai.jupyter
      # cpp stuff
      ms-vscode.cpptools
      # nix stuff
      arrterian.nix-env-selector
      bbenoist.nix
    ];
    userSettings = {
      "workbench.colorTheme" = "GitHub Light Default";
      "editor.fontSize" = 15;
      "editor.fontFamily" = "Iosevka, Menlo, Monaco, 'Courier New', monospace";
    };
  };

}
