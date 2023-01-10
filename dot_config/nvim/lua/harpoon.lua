local opts = { noremap=true, silent=true }

vim.keymap.set('n', '<space>a', function() require('harpoon.mark').add_file() end, opts)
