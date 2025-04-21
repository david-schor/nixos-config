{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ghostty
  ];  

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "catppuccin-mocha";
    };
  };
}
