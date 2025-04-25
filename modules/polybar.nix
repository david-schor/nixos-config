{ pkgs, ... }:

let
  colors = import ./config/colors.nix;
  config = import ./config/config.nix;
in
{
  services.polybar = {
    enable = true;
    script = "polybar mainbar &";
    config = {

      #--------------------BARS--------------------#

      "bar/mainbar" = {
        width = "100%";
        height = "24pt";
        background = "#00000000";
        foreground = colors.foreground;
        enable-ipc = true;

        font-0 = "JetBrainsMono Nerd Font:style=Regular:size=12;2";
		
        modules-left = "spacing terminals spacing memory spacing filesystem";
        modules-right = "network spacing date spacing clock spacing";
      };

      #--------------------MODULES--------------------#
	  
      "module/terminals" = {
        type = "custom/script";
        exec = "echo \"%{F} %{F-}$(pgrep -c ${config.terminal})\"";
        interval = 2;
        label = "%output%";
      };

      "module/memory" = {
        type = "internal/memory";
        interval = 2;
        label = "%{F}󰍛 %{F-}%percentage_used%%";
      };

      "module/filesystem" = {
        type = "internal/fs";
        mount-0 = "/";
        label-mounted = "%{F} %{F-}%free%";
      };

      "module/network" = {
        type = "internal/network";
        interface = config.interface;
        label-disconnected = "󰈂";
        label-connected = "󰈁";
      };
   
      "module/date" = {
        type = "internal/date";
        interval = 30;
        date = "%a %b %y";
        label = "%date%";
      };

      "module/clock" = {
        type = "internal/date";
        interval = 10;
        date = "%H:%M";
        label = "%date%";
      };
	  
      #--------------------AESTHETICS--------------------#

      "module/spacing" = {
        type = "custom/text";
        format = "  ";
        content-background = colors.background;
      };
    };
  };
}
