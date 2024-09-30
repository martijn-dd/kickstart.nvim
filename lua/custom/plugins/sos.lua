return {
  'tmillr/sos.nvim',
  config = function()
    require('sos').setup {
      timeout = 1500,
    }
  end,
}
