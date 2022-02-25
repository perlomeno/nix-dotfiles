{ pkgs, ... }:

{
  #
  # Emacs
  #
  
  home.packages = with pkgs; [
    # Fonts
    iosevka
    # LSP servers
    python39Packages.python-lsp-server
    python39Packages.pyflakes
    clang-tools
    haskell-language-server
    # Latex
    (texlive.combine { inherit (texlive) scheme-small wrapfig capt-of mhchem chemfig; })
    # IDEs
    jetbrains.clion
    jetbrains.pycharm-community
  ];

  programs.emacs = {
    enable = true;
  };

  xdg.configFile."emacs".recursive = true;
  xdg.configFile."emacs".source = ../configs/emacs;

  #
  # VSCode
  #

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

  #
  # Neovim
  #

  programs.neovim = {
    enable = true;
    plugins = with pkgs.vimPlugins; [
      vim-nix
    ];
  };

  xdg.configFile."nvim".recursive = true;
  xdg.configFile."nvim".source = ../configs/neovim;

  #
  # Other IDEs
  #

  home.packages = with pkgs; [

  ];

}
