{
  plugins = {
    cmp-nvim-lsp.enable = true;
    cmp-path.enable = true;
    cmp_luasnip.enable = true;
    luasnip.enable = true;

    cmp = {
      enable = true;

      settings = {
        completion = {
          keyword_length = 3;
        };

        performance = {
          max_view_entries = 5;
        };

        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:None,FloatBorder:CmpBorder,CursorLine:PmenuSel,Search:None";
            scrollbar = false;
          };
          documentation = {
            border = "rounded";
            winhighlight = "Normal:None,FloatBorder:CmpBorder";
            scrollbar = false;
          };
        };

        snippet.expand = ''
          function(args)
            require('luasnip').lsp_expand(args.body)
          end
        '';

        sources = [
          { name = "nvim_lsp"; }
          { name = "path"; }
        ];

        mapping = {
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-p>" = "cmp.mapping.select_prev_item()";
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-e>" = "cmp.mapping.abort()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<Tab>" = ''
            cmp.mapping(function(fallback)
              if cmp.visible() then
                cmp.confirm({ select = true })
              else
                fallback()
              end
            end, {"i", "s"})
          '';
        };
      };
    };
  };
}
