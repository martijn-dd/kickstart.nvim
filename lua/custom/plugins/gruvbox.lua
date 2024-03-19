return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function ()
        require("gruvbox").setup({
            palette_overrides = {
                dark0_hard = "#102929",
                dark0 = "#112a2a",
                dark0_soft = "#153434",
                dark1 = "#193d3d",
                dark2 = "#215151",
                dark3 = "#286464",
                dark4 = "#307777",
            }
        })
        vim.cmd([[colorscheme gruvbox]])
    end
}
