require'lspconfig'.ccls.setup{
	on_attach = function() 
		local bufopts = { noremap = true, silent = true, buffer = bufnr }
		vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
	end
}
