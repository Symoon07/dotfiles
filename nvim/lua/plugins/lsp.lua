vim.lsp.config["clangd"] = {
	cmd = { "clangd" },
	filetypes = { "c", "cpp" },
	root_markers = { ".git" },
}

vim.lsp.config["basedpyright"] = {
	cmd = { "basedpyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = { ".git" },
}

vim.lsp.config["lua_ls"] = {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = { ".git" },
}

vim.lsp.config["gopls"] = {
	cmd = { "gopls" },
	filetypes = { "go" },
	root_markers = { ".git" },
}

vim.lsp.config["slang_server"] = {
	cmd = { "slang-server", "--stdio" },
	filetypes = { "verilog", "systemverilog" },
	root_markers = { ".git" },
}

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("my.lsp", {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		local bufnr = args.buf

		if client:supports_method("textDocument/completion") then
			local chars = {}
			for i = 32, 126 do
				table.insert(chars, string.char(i))
			end
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = false })
		end

		local opts = { buffer = bufnr }
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
	end,
})

vim.lsp.enable({
	"clangd",
	"basedpyright",
	"lua_ls",
	"gopls",
	"slang_server",
})
