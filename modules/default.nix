{ ... }:

{
  imports = [
    # wm
    ./i3wm.nix

    # lazygit
    ./lazygit.nix

    # polybar
    ./polybar.nix

    # ghostty
    ./ghostty.nix

    # neovim
    ./neovim

    # fonts
    ./fonts.nix

    # git
    ./git.nix

    # picom
    ./picom.nix

    # zsh
    ./zsh.nix
  ];
}
