{
  plugins.lsp = {
    enable = true;

    servers = {
      # Nix
      nixd.enable = true;

      # Python
      pyright.enable = true;

      # C/C++
      clangd.enable = true;

      # Bash
      bashls.enable = true;

      # Lua
      lua_ls.enable = true;
    };

    keymaps = {
      lspBuf = {
        "gd" = {
          action = "definition";
          desc = "Go to definition";
        };
        "gr" = {
          action = "references";
          desc = "Go to references";
        };
        "gi" = {
          action = "implementation";
          desc = "Go to implementation";
        };
        "gt" = {
          action = "type_definition";
          desc = "Go to type definition";
        };
        "<leader>rn" = {
          action = "rename";
          desc = "Rename symbol";
        };
      };
    };
  };

  # Rust is special lol
  plugins.rustaceanvim.enable = true;
}
