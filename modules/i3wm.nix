{ pkgs, ... }:

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
      terminal = "ghostty";
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
          command = "ghostty";
          always = true;
          notification = false;
        }
      ];
    };
    extraConfig = ''
      exec --no-startup-id polybar mainbar &
      #exec --no-startup-id feh --bg-scale /home/david/.config/wallpaper/wallpaper.jpg &
    '';
  };
}
