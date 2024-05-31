-- leaderキー
vim.g.mapleader = ' ';

-- window移動
vim.keymap.set('n', '<leader>h', '<C-w><C-h>')
vim.keymap.set('n', '<leader>j', '<C-w><C-j>')
vim.keymap.set('n', '<leader>k', '<C-w><C-k>')
vim.keymap.set('n', '<leader>l', '<C-w><C-l>')

-- 画面スクロール
vim.keymap.set('n', '<left>', 'zh')
vim.keymap.set('n', '<right>', 'zl')

-- buffer移動
vim.keymap.set('n', '<M-l>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<M-h>', ':bprev<CR>', { silent = true })

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

-- C-zを無効化
vim.keymap.set('n', '<C-z>', '<NOP>')

-- 保存
vim.keymap.set('n', '<leader>s', '<cmd>w<CR>')
vim.keymap.set('n', '<leader><S-s>', '<cmd>wa<CR>')
vim.keymap.set('n', '<leader>w', '<cmd>bd<CR><cmd>bnext<CR>')
vim.keymap.set('n', '<leader><S-w>', '<cmd>%bd<CR>')

-- 設定を開く
vim.keymap.set("n", "<F1>", "<cmd>e ~/.config/nvim<CR>")
