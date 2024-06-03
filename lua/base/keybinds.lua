-- leaderキー
vim.g.mapleader = ' ';

-- window移動
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

-- window size
vim.keymap.set('n', '<C-Up>', '<C-w>+')
vim.keymap.set('n', '<C-Down>', '<C-w>-')
vim.keymap.set('n', '<C-Left>', '<C-w><')
vim.keymap.set('n', '<C-Right>', '<C-w>>')

vim.keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
vim.keymap.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
vim.keymap.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Clear search with <esc>
vim.keymap.set({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- 画面スクロール
vim.keymap.set('n', '<left>', 'zh')
vim.keymap.set('n', '<down>', 'zj')
vim.keymap.set('n', '<up>', 'zk')
vim.keymap.set('n', '<right>', 'zl')

-- buffer移動
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<S-h>', ':bprev<CR>', { silent = true })

-- remove buffer
vim.keymap.set('n', '<leader>bd', '<cmd>bd<cr>', { desc = "Delete buffer" })
-- key swap
vim.keymap.set('n', ';', ':')
vim.keymap.set('n', ':', ';')

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

-- 保存
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set('n', '<leader>qq', '<cmd>qa<CR>', { desc = "Quit All" })

-- 設定を開く
vim.keymap.set("n", "<F1>", "<cmd>e ~/.config/nvim<CR>")
