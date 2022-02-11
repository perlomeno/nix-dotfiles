{ pkgs, ... }:

{

  home.packages = with pkgs; [
    htop
    exa
    bat
    ripgrep
    fd
    file
  ];

  programs.bash = {
    enable = true;
    profileExtra = ''
      . "$HOME/.nix-profile/etc/profile.d/hm-session-vars.sh"
      '';
    shellAliases = {
      hmswitch = "home-manager switch";
      tm = "tmux";
      ls = "exa --classify";
      tree = "exa --tree";
    };
  };

  programs.readline = {
    enable = true;
    bindings = {
      "\\e[A" = "history-search-backward";
      "\\e[B" = "history-search-forward";
    };
    variables = {
      completion-ignore-case = true;
    };
  };

  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    settings = {
      add_newline = false;
      line_break = {
        disabled = true;
      };
    };
  };

  programs.tmux = {
    enable = true;
    prefix = "C-a";
    extraConfig = ''
      set -g status-right "#(whoami)@#(hostname) %H:%M"
      set -g window-status-current-style "bold"
      set -g mouse on
    '';
  };

}
