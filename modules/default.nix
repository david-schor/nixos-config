{ ... }:

{
  imports = [
    # wm
    ./i3wm.nix

    # polybar
    ./polybar.nix

    # ghostty
    ./ghostty.nix

    # fonts
    ./fonts.nix

    # git
    ./git.nix

    # picom
    ./picom.nix

    # zsh
    ./zsh.nix

    # neofetch
    ./neofetch.nix
  ];
}
