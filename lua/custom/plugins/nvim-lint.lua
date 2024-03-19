return {
  'mfussenegger/nvim-lint',
  config = function()
    local eslint = require('lint').linters.eslint

    local phpstan = require('lint').linters.phpstan
    phpstan.args = {
      'analyze',
      '--error-format=json',
      '--no-progress',
      '--memory-limit=1G',
    }

    require('lint').linters_by_ft = {
      php = {
        'php',
        'phpstan',
      },
    }

    vim.api.nvim_create_autocmd({ 'BufReadPost', 'BufWritePost' }, {
      callback = function()
        require('lint').try_lint()
      end,
    })
  end,
}
