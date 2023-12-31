local keymap = vim.keymap

-- Custom Delete
keymap.set('n', 'x', '"_x')
keymap.set('n', 'dw', 'vb"_d')

-- select
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Increment/Decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- tab
keymap.set('n', 'te', ':tabedit')

-- split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')
