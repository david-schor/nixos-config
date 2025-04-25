{ ... }:

{
  services.picom = {
    enable = true;
    backend = "glx";
    fade = true;
    shadow = true;
    shadowOpacity = 0.75;
    shadowExclude = [
      "class_i = 'polybar'"
    ];
    vSync = true;
    settings = {
      corner-radius = 8;
      use-damage = false;
      refresh-rate = 180;
      rounded-corners-exclude = [
        "class_i = 'polybar'"
      ];
    };
  };
}
