" Plugins
lua require('plugins')

set tabstop=4
set number
set relativenumber
set shiftwidth=4

if has('termguicolors')
	set termguicolors
endif

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
colorscheme sonokai

" Setup of 
lua require('lsp')
