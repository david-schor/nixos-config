{ ... }:

{
  services.picom = {
    enable = true;
#    activeOpacity = 0.8;
#    inactiveOpacity = 0.6;
    backend = "glx";
    settings = {
      corner-radius = 8;
      use-damage = false;
      vsync = true;
      refresh-rate = 180;
      xrender-sync-fence = false;
#      blur = {
#        method = "dual_kawase";
#        size = 10;
#      };
      fade = true;
      rounded-corners-exclude = [
        "class_i = 'polybar'"
      ];
    };
  };
}
