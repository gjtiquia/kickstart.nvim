-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    -- (GJ) changed it to open on the right instead
    { '\\', ':Neotree reveal right<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {

      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },

      filtered_items = {
        hide_by_pattern = {
          '*.meta',
        },
      },

      -- (GJ) i dont want to override netrw when i do `:e .`
      -- neo-tree for me is strictly for exploring project structure
      -- file operations will be via oil
      hijack_netrw_behavior = 'disabled',
    },
  },
}
