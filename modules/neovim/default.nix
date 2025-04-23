{ pkgs, ... }:

{
  home.packages = with pkgs; [
    lua-language-server
    pyright
    gopls
  ];

  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    vimdiffAlias = true;
    withPython3 = true;
    withNodeJs = true;
	
    plugins = with pkgs.vimPlugins; [
      {
        plugin = catppuccin-nvim;
        type = "lua";
        config = builtins.readFile ./plugins/catppuccin.lua;
      }
      {
        plugin = lualine-nvim;
        type = "lua";
        config = builtins.readFile ./plugins/lualine.lua;
      }
      {
        plugin = nvim-tree-lua;
        type = "lua";
        config = builtins.readFile ./plugins/nvim-tree.lua;
      }
      {
        plugin = bufferline-nvim;
        type = "lua";
        config = builtins.readFile ./plugins/bufferline.lua;
      }
      {
        plugin = telescope-nvim;
        type = "lua";
        config = builtins.readFile ./plugins/telescope.lua;
      }
      {
        plugin = nvim-cmp;
        type = "lua";
        config = builtins.readFile ./plugins/cmp.lua;
      }
      {
        plugin = nvim-lspconfig;
        type = "lua";
        config = builtins.readFile ./plugins/lsp.lua;
      }
      {
        plugin = dashboard-nvim;
        type = "lua";
        config = builtins.readFile ./plugins/dashboard.lua;
      }
      {
        plugin = lazygit-nvim;
        type = "lua";
        config = builtins.readFile ./plugins/lazygit.lua;
      }

      nvim-nonicons
      cmp-buffer
      cmp-path
      cmp-nvim-lsp
    ];

    extraLuaConfig = ''
      ${builtins.readFile ./init.lua}
    '';
  };
}
