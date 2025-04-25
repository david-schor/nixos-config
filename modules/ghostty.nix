{ pkgs, ... }:

let
  colors = import ./config/colors.nix;
  config = import ./config/config.nix;
in
{
  programs.ghostty = {
    enable = true;
    settings = {
      cursor-color = colors.cursor;
      shell-integration = config.shell;
      font-size = 12;
      theme = "mountain-dawn";
      window-decoration = false;
    };
    themes = {
      mountain-dawn = {
        background = colors.background;
        foreground = colors.foreground;
        cursor-color = colors.cursor;
        selection-background = colors.select-back;
        selection-foreground = colors.select-fore;
        palette = [
          "0=${colors.black}"
          "1=${colors.red}"
          "2=${colors.green}"
          "3=${colors.yellow}"
          "4=${colors.blue}"
          "5=${colors.magenta}"
          "6=${colors.cyan}"
          "7=${colors.gray}"
          "8=${colors.gray-alt}"
          "9=${colors.red-alt}"
          "10=${colors.green-alt}"
          "11=${colors.yellow-alt}"
          "12=${colors.blue-alt}"
          "13=${colors.magenta-alt}"
          "14=${colors.cyan-alt}"
          "15=${colors.white}"
        ];
      };
    };
  };
}
