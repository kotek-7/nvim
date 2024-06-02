-- leaderキー
vim.g.mapleader = ' ';

-- window移動
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')

-- 画面スクロール
vim.keymap.set('n', '<left>', 'zh')
vim.keymap.set('n', '<down>', 'zj')
vim.keymap.set('n', '<up>', 'zk')
vim.keymap.set('n', '<right>', 'zl')

-- buffer移動
vim.keymap.set('n', '<S-l>', ':bnext<CR>', { silent = true })
vim.keymap.set('n', '<S-h>', ':bprev<CR>', { silent = true })

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
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>')
vim.keymap.set('n', '<C-S-s>', '<cmd>wa<CR>')
vim.keymap.set('n', '<leader>qq', '<cmd>wqa<CR>')

-- 設定を開く
vim.keymap.set("n", "<F1>", "<cmd>e ~/.config/nvim<CR>")
