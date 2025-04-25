{ pkgs, ... }:

let
  config = import ./config/config.nix;
in
{
  home.packages = with pkgs; [
    feh
  ];

  xsession.windowManager.i3 = {
    enable = true;
    package = pkgs.i3-gaps;
    config = {
      bars = []; # needed for polybar
      modifier = "Mod4";
      terminal = config.terminal;
      gaps = {
        inner = 10;
        outer = 5;
      };
      startup = [
        {
          command = "feh --bg-fill ~/.dotfiles/wallpaper/wallpaper.jpg";
          always = true;
          notification = false;
        }
        {
          command = "${config.terminal}";
          always = true;
          notification = false;
        }
        {
          command = "polybar --reload mainbar &";
          always = true;
          notification = false;
        }
      ];
    };
  };
}
