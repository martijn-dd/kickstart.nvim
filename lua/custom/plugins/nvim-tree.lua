vim.keymap.set('n', '<leader>n', ':NvimTreeFindFileToggle<CR>')
vim.keymap.set('n', '<leader>ff', ':NvimTreeFindFile<CR>', { desc = 'Nvim Tree [F]ind [F]ile' })

return {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function ()
        require('nvim-tree').setup({
            git = {
                ignore = false,
            },
            renderer = {
                -- highlight_opened_files = "1",
                group_empty = true,
                icons = {
                show = {
                    folder_arrow = false,
                },
                },
                indent_markers = {
                enable = false,
                -- inline_arrows = false,
                },
            },
            view = {
                width = 50
            }
        })
    end
}
