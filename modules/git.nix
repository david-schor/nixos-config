{ pkgs, ... }:

{
  home.packages = with pkgs; [
    git
  ];

  programs.git = {
    enable = true;
    userName = "David Schor";
    userEmail = "18281740+david-schor@users.noreply.github.com";
  };
}
