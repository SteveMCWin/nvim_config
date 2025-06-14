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
vim.keymap.set("n", '<C-n>', "<cmd>NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeFocus<CR>")
vim.keymap.set("i", '<C-n>', "<cmd>NvimTreeToggle<CR>")

-- AutoSession
vim.keymap.set("n", "<leader>rs", "<cmd>SessionRestore<CR>", {desc = "Restore session for cmd" })
vim.keymap.set("n", "<leader>ss", "<cmd>SessionSave<CR>", {desc = "Save session for aout session root dir"})

-- Telescope
-- NOTE: the rest of the keymaps are in the plugins/telescope.lua file
vim.keymap.set("n", "<leader>th", "<cmd>Telescope themes<CR>", { noremap = true, silent = true, desc = "Telescope Theme Switcher" })

-- Bufferline
vim.keymap.set("n", "<leader>x", "<cmd>bd<CR>", { noremap = true, silent = true, desc = "Close current buffer" })
vim.keymap.set("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", { noremap = true, silent = true, desc = "Go to buffer to the right" })
vim.keymap.set("n", "<S-tab>", "<cmd>BufferLineCyclePrev<CR>", { noremap = true, silent = true, desc = "Go to buffer to the left" })

vim.keymap.set("n", "<leader>>", "<cmd>BufferLineMoveNext<CR>", { noremap = true, silent = true, desc = "Move buffer to the right" })
vim.keymap.set("n", "<leader><", "<cmd>BufferLineMovePrev<CR>", { noremap = true, silent = true, desc = "Move buffer to the left" })

