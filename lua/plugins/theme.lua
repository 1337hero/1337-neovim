-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     priority = 1000,
--     opts = {
--     },
--   }
-- }
return {
{
    "folke/tokyonight.nvim",
    --"rebelot/kanagawa.nvim",

    lazy = false,
    priority = 1000,

    opts = {
        -- custom options here
    },
    config = function()
        vim.cmd [[colorscheme tokyonight-night]]
    end,
}
}
