{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ghostty
  ];  

  programs.ghostty = {
    enable = true;
    settings = {
      theme = "twilight-rain";
      window-decoration = false;
    };
    themes = {
      twilight-rain = {
        palette = [
          "0=#0d1b2a"
          "1=#e26a6a"
          "2=#94d2bd"
          "3=#ffc49b"
          "4=#7d91b7"
          "5=#ff8e72"
          "6=#a2bfe5"
          "7=#e0e1dd"
          "8=#1b263b"
          "9=#f07178"
          "10=#b5ead7"
          "11=#ffe0b2"
          "12=#a2bfe5"
          "13=#ffb4a2"
          "14=#94e2d5"
          "15=#ffffff"
        ];
        background = "0d1b2a";
        foreground = "e0e1dd";
        cursor-color = "ff8e72";
        selection-background = "1b263b";
        selection-foreground = "ffffff";
      };
    };
  };
}
