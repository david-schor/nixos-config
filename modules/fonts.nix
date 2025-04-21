{ pkgs, ... }:

{
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    (nerdfonts.override { fonts = [  "FiraCode" "JetBrainsMono" ]; })
    fira-code
    jetbrains-mono
  ];
}
