vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>nh", ":nohl<CR>")

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>h", "<C-w>h")
keymap.set("n", "<leader>j", "<C-w>j")
keymap.set("n", "<leader>k", "<C-w>k")
keymap.set("n", "<leader>l", "<C-w>l")

-- tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab

-- line movement & management
keymap.set("n", "<A-k>", "<cmd>m -2<CR>")
keymap.set("n", "<A-j>", "<cmd>m +1<CR>")

keymap.set("v", "<A-k>", "<cmd>m'<-2<CR>gv=gv")
keymap.set("v", "<A-j>", "<cmd>m'>+1<CR>gv=gv")

keymap.set("n", "<leader>ac", "gcc");
keymap.set("v", "<leader>ac", "gc");

-- LSP utilities
keymap.set("n", "<leader>se", "<cmd>lua vim.diagnostic.open_float()<CR>")
keymap.set("n", "<leader>gc", "<cmd>lua vim.lsp.buf.declaration()<CR>")
keymap.set("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
keymap.set("n", "<leader>gf", "<cmd>lua vim.lsp.buf.definition()<CR>")
keymap.set("n", "<leader>fx", "<cmd>lua vim.lsp.buf.code_action()<CR>")
keymap.set("n", "<leader>sv", "<cmd>lua vim.lsp.buf.hover()<CR>")
