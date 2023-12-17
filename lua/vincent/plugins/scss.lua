vim.api.nvim_exec(
	[[
  autocmd BufWritePost *.scss !sass %:p %:r.css
]],
	false
)
