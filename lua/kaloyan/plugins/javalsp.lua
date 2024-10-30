return {
  {
    'nvim-java/nvim-java',
    config = function()
      require('java').setup() -- Setup `nvim-java` before lspconfig
      require('lspconfig').jdtls.setup {
        handlers = {
          ['$/progress'] = function(_, result, ctx)
            -- Check if the progress notification is related to folding, then ignore it
            if result and result.message and result.message:match 'Folding' then
              return
            end
          end,
          -- Optionally, you can handle other notifications here to silence them
        },
      }
    end,
  },
}
