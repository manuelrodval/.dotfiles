-- Remaps
-- Copy to global clipboard
vim.keymap.set("n", "<leader>y", '"*yy')
vim.keymap.set("v", "<leader>y", '"*yy')

-- Move blocks of code
vim.keymap.set("n", "<A-j>", ":m .+1<cr>==")
vim.keymap.set("n", "<A-k>", ":m .-2<cr>==")
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv")
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv")

-- Todo Trouble
vim.keymap.set("n", "<leader>tt", ":TroubleToggle<cr>")
vim.keymap.set("n", "<leader>td", ":TodoTelescope<cr>")

-- Write quit typo correction
vim.cmd("command! W w")
vim.cmd("command! Wq wq")
vim.cmd("command! Wa wa")
vim.cmd("command! Q q")
vim.cmd("command! WQ wq")
vim.cmd("command! QA qa")
vim.cmd("command! Qa qa")

-- Window resize nvim
vim.keymap.set("n", "<c-up>", "<c-w>+")
vim.keymap.set("n", "<c-down>", "<c-w>-")
vim.keymap.set("n", "<c-right>", "<c-w>>")
vim.keymap.set("n", "<c-left>", "<c-w><")
