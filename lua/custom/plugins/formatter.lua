vim.keymap.set('n', '<leader>fw', ':w<CR>:FormatWrite<CR>', { desc = '[F]ormat [W]write' })

return {
  'mhartington/formatter.nvim',
  lazy = false,
  cmd = { 'Format' },
  config = function()
    local util = require 'formatter.util'

    require('formatter').setup {
      filetype = {
        js = {
          require('formatter.filetypes.javascript').prettierd,
        },
        json = {
          require('formatter.filetypes.json').prettierd,
        },
        lua = {
          require('formatter.filetypes.lua').stylua,
        },
        php = {
          require('formatter.filetypes.php').php_cs_fixer,
        },
        scss = {
          require('formatter.filetypes.css').prettierd,
        },
        twig = {
          function()
            return {
              exe = 'prettydiff beautify',
              args = {
                util.format_prettydiff_arg('source', util.get_current_buffer_file_path()),
                util.format_prettydiff_arg('lang', 'html'),
                util.format_prettydiff_arg('lexer', 'markup'),
                util.format_prettydiff_arg('brace_line', false),
                util.format_prettydiff_arg('brace_padding', false),
                util.format_prettydiff_arg('brace_style', 'none'),
                util.format_prettydiff_arg('braces', false),
                util.format_prettydiff_arg('comment_line', false),
                util.format_prettydiff_arg('comments', false),
                util.format_prettydiff_arg('compressed_css', false),
                util.format_prettydiff_arg('correct', false),
                util.format_prettydiff_arg('cssInsertLines', false),
                util.format_prettydiff_arg('else_line', false),
                util.format_prettydiff_arg('end_comma', false),
                util.format_prettydiff_arg('force_attribute', false),
                util.format_prettydiff_arg('force_indent', false),
                util.format_prettydiff_arg('format_array', 'default'),
                util.format_prettydiff_arg('format_object', 'default'),
                util.format_prettydiff_arg('function_name', false),
                util.format_prettydiff_arg('indent_style', 'space'),
                util.format_prettydiff_arg('indent_level', 0),
                util.format_prettydiff_arg('indent_char', ' '),
                util.format_prettydiff_arg('indent_size', 4),
                util.format_prettydiff_arg('method_chain', 0),
                util.format_prettydiff_arg('never_flatten', false),
                util.format_prettydiff_arg('new_line', true),
                util.format_prettydiff_arg('no_case_indent', false),
                util.format_prettydiff_arg('no_lead_zero', false),
                util.format_prettydiff_arg('object_sort', false),
                util.format_prettydiff_arg('preserve', 2),
                util.format_prettydiff_arg('preserve_comment', true),
                util.format_prettydiff_arg('quote_convert', 'none'),
                util.format_prettydiff_arg('space', true),
                util.format_prettydiff_arg('space_close', false),
                util.format_prettydiff_arg('tag_merge', false),
                util.format_prettydiff_arg('tag_sort', false),
                util.format_prettydiff_arg('ternary_line', true),
                util.format_prettydiff_arg('unformatted', false),
                util.format_prettydiff_arg('variable_list', 'none'),
                util.format_prettydiff_arg('vertical', false),
                util.format_prettydiff_arg('wrap', 0),

                util.format_prettydiff_arg('readmethod', 'filescreen'),
                util.format_prettydiff_arg('endquietly', 'quiet'),
              },
              no_append = true,
              stdin = true,
            }
          end,
        },
        xml = {
          require('formatter.filetypes.xml').xmllint,
        },
      },
    }
  end,
}
