{ pkgs, ... }:

{
  home.packages = with pkgs; [
    neovim
  ];
 
  programs.neovim = {
    enable = true;
    extraConfig = ''
      set number relativenumber
    '';
  };
}
