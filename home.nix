{ config, pkgs, ...  }:

{
  home.username = "david";
  home.homeDirectory = "/home/david";

  home.stateVersion = "24.11";

  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    xsel
    wget
  ];

  imports = [
    ./modules
  ];
}
