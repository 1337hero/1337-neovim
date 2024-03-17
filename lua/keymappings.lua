local keymap = vim.keymap -- for conciseness

keymap.set("n", "<leader>pv", vim.cmd.Ex)
keymap.set('n', '<c-k>', ':wincmd k<CR>')
keymap.set('n', '<c-j>', ':wincmd j<CR>')
keymap.set('n', '<c-h>', ':wincmd h<CR>')
keymap.set('n', '<c-l>', ':wincmd l<CR>')

local builtin = require('telescope.builtin')
keymap.set('n', '<leader>pf', builtin.find_files, {})
keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)


keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- greatest remap ever!
keymap.set("x", "<leader>p", "\"_dP")


