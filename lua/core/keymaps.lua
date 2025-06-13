local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines down in visual selection" })

--vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

--vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<Esc>", ":nohl<CR>", {desc = "Clear search highlight", silent = true})

vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format)

vim.keymap.set("n", "x", '"_x', opts)

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "highlight when yanking text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

vim.keymap.set("i", "<C-h>", "<Left>",  { noremap = true })
vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true })
vim.keymap.set("i", "<C-j>", "<Down>",  { noremap = true })
vim.keymap.set("i", "<C-k>", "<Up>",    { noremap = true })

-- NvimTree
vim.keymap.set("n", '<C-n>', ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>e", ":NvimTreeFocus<CR>")

-- AutoSession
vim.keymap.set("n", "<leader>rs", "<cmd>SessionRestore<CR>", {desc = "Restore session for cmd" })
vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", {desc = "Save session for aout session root dir"})

-- Telescope
vim.keymap.set("n", "<leader>tth", "<cmd>Telescope themes<CR>", { noremap = true, silent = true, desc = "Telescope Theme Switcher" })

local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope_builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', telescope_builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', telescope_builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', telescope_builtin.help_tags, { desc = 'Telescope help tags' })
