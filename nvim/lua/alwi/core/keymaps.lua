vim.g.mapleader = " "

local keymap = vim.keymap

-- Basic custom keymaps
-- Clear search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>sk", "<C-w>+", { desc = "Increase current window height" })
keymap.set("n", "<leader>sj", "<C-w>-", { desc = "Decrease current window height" })
keymap.set("n", "<leader>s>", "<C-w>>", { desc = "Increase current window width" })
keymap.set("n", "<leader>s<", "<C-w><", { desc = "Decrease current window width" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Resize split window to equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close active split window" })

-- Window movement
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

--Buffer management
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", { desc = "Move to next buffer" })
keymap.set("n", "<leader>bp", "<cmd>bprevious<CR>", { desc = "Move to previous buffer" })
keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Remove current file from buffer" })
