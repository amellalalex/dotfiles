" Plugins
lua require('plugins')

set tabstop=4
set number
set relativenumber
set shiftwidth=4
let mapleader = " "

if has('termguicolors')
	set termguicolors
endif

" The configuration options should be placed before `colorscheme sonokai`.
let g:sonokai_style = 'shusia'
let g:sonokai_better_performance = 1
colorscheme sonokai

" Setup of 
lua require('lsp')

" Fire up lsp manager
lua require("mason").setup()

" setup mapping to call :LazyGit
nnoremap <silent> <leader>gg :LazyGit<CR>

" Setup mapping for undo tree 
nnoremap <silent> <leader>u :UndotreeToggle<CR>
let g:undotree_SetFocusWhenToggle = 1

" Set path for undo persistent file
let target_path = expand('~/.undodir')

" create the directory and any parent directories
" if the location does not exist.
if !isdirectory(target_path)
	call mkdir(target_path, "p", 0700)
endif

let &undodir=target_path
set undofile

" Copilot 
lua require('copilot-config')
