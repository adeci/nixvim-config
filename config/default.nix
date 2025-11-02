{
  imports = [
    ./options.nix
    ./plugins/colorscheme.nix
    ./plugins/treesitter.nix
    ./plugins/telescope.nix
    ./plugins/oil.nix
    ./plugins/lsp.nix
    ./plugins/cmp.nix
    ./plugins/comment.nix
    ./plugins/git.nix
    ./plugins/lightline.nix
    ./plugins/which-key.nix
    ./plugins/mini.nix
    ./plugins/sleuth.nix
    ./plugins/wilder.nix
    ./plugins/web-devicons.nix
  ];

  globals.mapleader = " ";

  # Global keymaps
  keymaps = [
    {
      mode = "n"; # Only in normal mode!
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
      options.desc = "Clear search highlight";
    }

    # Diagnostic navigation
    {
      mode = "n";
      key = "[d";
      action.__raw = "vim.diagnostic.goto_prev";
      options.desc = "Previous diagnostic";
    }
    {
      mode = "n";
      key = "]d";
      action.__raw = "vim.diagnostic.goto_next";
      options.desc = "Next diagnostic";
    }
    {
      mode = "n";
      key = "<leader>e";
      action.__raw = "vim.diagnostic.open_float";
      options.desc = "Show diagnostic error";
    }

    # Buffer navigation
    {
      mode = "n";
      key = "<leader>bd";
      action = "<cmd>bdelete<CR>";
      options.desc = "Delete buffer";
    }
    {
      mode = "n";
      key = "<leader>bn";
      action = "<cmd>bnext<CR>";
      options.desc = "Next buffer";
    }
    {
      mode = "n";
      key = "<leader>bp";
      action = "<cmd>bprevious<CR>";
      options.desc = "Previous buffer";
    }
  ];
}
