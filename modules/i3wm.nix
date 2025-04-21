{ pkgs, ... }:

{
  home.packages = with pkgs; [
    feh
  ];

  services.picom = {
    enable = true;
    activeOpacity = 0.8;
    inactiveOpacity = 0.8;
    backend = "xrender";
  };

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
      window = {
        border = 0;
      };
      startup = [
        {
          command = "feh --bg-fill ~/.config/wallpaper/wallpaper.jpg";
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
      exec --no-startup-id polybar top &
      exec --no-startup-id polybar bottom &
      #exec --no-startup-id feh --bg-scale /home/david/.config/wallpaper/wallpaper.jpg &
    '';
  };
}
