-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- lazy.nvim
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      dashboard = {
        sections = {
          -- your dashboard configuration comes here
          -- or leave it empty to use the default settings
          -- refer to the configuration section below
          { section = 'header' },
          { icon = ' ', title = 'Keymaps', section = 'keys', indent = 2, padding = 1 },
          { icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
          { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
          { section = 'startup' },
        },
      },
    },
  },
  {
    'ThePrimeagen/vim-be-good',
  },
  {
    'zaldih/themery.nvim',
    lazy = false,
    config = function()
      require('themery').setup {
        themes = {
          {
            name = 'Cyberdream',
            colorscheme = 'cyberdream',
            before = function()
              local cyberdream = require 'cyberdream'
              cyberdream.setup {
                transparent = true,
              }
            end,
          },
          {
            name = 'Nightfox',
            colorscheme = 'nightfox',
          },
        },
      }
    end,
  },
}
