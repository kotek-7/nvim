local vscode = require("vscode")

-- leaderキー
vim.g.mapleader = ' ';

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- key swap
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', ':', ';')

vim.keymap.set("n", "<leader><leader>", "<Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>")

-- buffer切り替え
vim.keymap.set("n", "H", "<Cmd>call VSCodeNotify('workbench.action.previousEditor')<CR>")
vim.keymap.set("n", "L", "<Cmd>call VSCodeNotify('workbench.action.nextEditor')<CR>")

-- ZZ,ZQを無効
vim.keymap.set('n', 'ZZ', '<NOP>')
vim.keymap.set('n', 'ZQ', '<NOP>')

-- put後行末に移動
vim.keymap.set({ 'n', 'v' }, 'p', 'p`]')

-- レジスタに登録しない
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', 'X', '"_X')
vim.keymap.set('n', 's', '"_s')

-- 行を追加
vim.keymap.set('n', '<leader>o', 'o<esc>')
vim.keymap.set('n', '<leader><S-o>', '<S-o><esc>')

-- C-zを無効化
vim.keymap.set('n', '<C-z>', '<NOP>')

-- 置換
vim.keymap.set("x", "<leader>r", 'y:%s/<C-r><C-r>"//g')
vim.keymap.set("n", "<leader>r", 'yiw:%s/<C-r><C-r>"//g')
