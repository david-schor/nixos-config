{ pkgs, ... }:

let
  colors = {
    background      = "#0d1b2a";
    background-alt  = "#1b263b";
    foreground      = "#e0e1dd";
    foreground-alt  = "#a9b1bc";

    orange          = "#ff8661";
    red             = "#f07178";

    primary         = "#ff8e72";
  };
in
{
  services.polybar = {
    enable = true;
    script = "polybar --reload mainbar &";
    config = {
      "bar/mainbar" = {
        width = "100%";
        height = 24;

        background = colors.background;
        foreground = colors.foreground;
		
        line-size = 2;
        line-color = colors.orange;
        border-size = 4;
        border-color = colors.background;
        font-0 = "FiraCode Nerd Font:style=Regular:size=11;2";
        font-1 = "JetBrainsMono Nerd Font:style=Regular:size=14;4";
		
        modules-left = "spacing PLD terminals PRD";
        modules-center = "PLD clock PRD spacing PLD date PRD";
        modules-right = "PLD memory PRD spacing PLD cpu PRD spacing";

        fixed-center = true;
        enable-ipc = true;
      };

      "module/i3" = {
        type = "internal/i3";
        label-focused = "%name%";
      };
	  
      "module/terminals" = {
        type = "custom/script";
        exec = "echo \"%{F${colors.primary}} %{F-}$(pgrep -c ghostty)\""; # has to be updated if not ghostty terminal
        interval = 2;
        label = "%output%";
        label-foreground = colors.foreground;
        label-background = colors.background-alt;
      };

      "module/clock" = {
        type = "internal/date";
        interval = 1;
        date = "%H:%M:%S";
        label = "%{F${colors.primary}} %{F-} %date%";
        label-foreground = colors.foreground;
        label-background = colors.background-alt;
      };

      "module/date" = {
        type = "internal/date";
        interval = 1;
        date = "%d.%m.%Y";
        label = "%{F${colors.primary}} %{F-} %date%";
        label-foreground = colors.foreground;
        label-background = colors.background-alt;
      };

      "module/memory" = {
        type = "internal/memory";
        interval = 2;
        label = "%{F${colors.primary}} %{F-} %percentage_used:2%%";
        label-foreground = colors.foreground;
        label-background = colors.background-alt;
      };

      "module/cpu" = {
        type = "internal/cpu";
        interval = 2;
        label = "%{F${colors.primary}} %{F-} %percentage:2%%";
        label-foreground = colors.foreground;
        label-background = colors.background-alt;
      };
	  
      #--------------------AESTHETICS--------------------#
	  
      "module/PLD" = {
        type = "custom/text";
        label = "%{T2}%{T-}";
        label-foreground = colors.background-alt;
        label-background = colors.background;
      };

      "module/spacing" = {
        type = "custom/text";
        format = " ";
        content-background = colors.background;
      };

      "module/PRD" = {
        type = "custom/text";
        label = "%{T2}%{T-}";
        label-foreground = colors.background-alt;
        label-background = colors.background;
      };
    };
  };
}
