{ ... }:

{
  services.picom = {
    enable = true;
    activeOpacity = 0.8;
    inactiveOpacity = 0.6;
    backend = "glx";
    settings = {
      corner-radius = 8;
      blur = {
        method = "dual_kawase";
        size = 10;
      };
      rounded-corners-exclude = [
        "class_i = 'polybar'"
      ];
    };
  };
}
