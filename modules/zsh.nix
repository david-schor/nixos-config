{  configs, pkgs, ... }:

{
  home.packages = with pkgs; [
    zsh
  ];
  
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    autosuggestion.enable = true;
    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
    };
  };
}
