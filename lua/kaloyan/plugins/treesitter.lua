return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    ensure_installed = { 'bash', 'c', 'html', 'lua', 'luadoc', 'markdown', 'vim', 'vimdoc', 'java' },
    auto_install = true,
    highlight = {
      enable = true,
    },
    indent = { enable = true },
  },
  config = function(_, opts)
    require('nvim-treesitter.install').prefer_git = true
    ---@diagnostic disable-next-line: missing-fields
    require('nvim-treesitter.configs').setup(opts)
  end,
}
