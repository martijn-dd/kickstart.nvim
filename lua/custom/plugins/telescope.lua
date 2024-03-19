vim.keymap.set('n', '<leader>fb', ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
        { desc = '[F]ile [B]rowser' })

return {
        "nvim-telescope/telescope-file-browser.nvim",
        config = function()
                require("telescope").load_extension "file_browser"
        end
}
