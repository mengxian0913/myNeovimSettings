-- SetTitle function
function SetTitle()
	vim.fn.setline(1, "/*********************************************************")
	vim.fn.append(vim.fn.line("."), "# File Name: " .. vim.fn.expand("%"))
	vim.fn.append(vim.fn.line(".") + 1, "# Author: Vincent")
	vim.fn.append(vim.fn.line(".") + 2, "# Mail: mengxian0913@gmail.com")
	vim.fn.append(vim.fn.line(".") + 3, "# Created Time: " .. os.date("%c"))
	vim.fn.append(vim.fn.line(".") + 4, "*********************************************************/")
	vim.fn.append(vim.fn.line(".") + 5, "")

	local filename = vim.fn.expand("%:t") -- 獲取當前緩衝區的文件名（不含路徑）
	local extension = vim.fn.fnamemodify(filename, ":e") -- 獲取文件的副檔名

	if extension == "cpp" then
		vim.fn.append(vim.fn.line(".") + 6, '#pragma GCC optimize("O3")')
		vim.fn.append(vim.fn.line(".") + 7, "#include <bits/stdc++.h>")
		vim.fn.append(vim.fn.line(".") + 8, "using namespace std;")
		vim.fn.append(vim.fn.line(".") + 9, "#define int long long")
		vim.fn.append(vim.fn.line(".") + 10, "#define ff first")
		vim.fn.append(vim.fn.line(".") + 11, "#define ss second")
		vim.fn.append(vim.fn.line(".") + 12, "#define fastIO cin.tie(nullptr)->sync_with_stdio(false);")
		vim.fn.append(vim.fn.line(".") + 13, "#define INF 0x7FFFFFFF")
		vim.fn.append(vim.fn.line(".") + 14, "#define pb push_back")
		vim.fn.append(vim.fn.line(".") + 15, "#define all(aa) aa.begin(),aa.end()")
		vim.fn.append(vim.fn.line(".") + 16, "#define MOD (int)(1e9+7)")
		vim.fn.append(vim.fn.line(".") + 17, "")
		vim.fn.append(vim.fn.line(".") + 18, "void solve(){")
		vim.fn.append(vim.fn.line(".") + 19, "  ")
		vim.fn.append(vim.fn.line(".") + 20, "}")
		vim.fn.append(vim.fn.line(".") + 21, "")
		vim.fn.append(vim.fn.line(".") + 22, "signed main(){")
		vim.fn.append(vim.fn.line(".") + 23, "  fastIO")
		vim.fn.append(vim.fn.line(".") + 24, "  solve();")
		vim.fn.append(vim.fn.line(".") + 25, "  return 0;")
		vim.fn.append(vim.fn.line(".") + 26, "}")
	end

	vim.api.nvim_command("au BufNewFile * normal G")
end

-- Auto commands
vim.api.nvim_command("autocmd BufNewFile *.cpp lua SetTitle()")
vim.api.nvim_command("autocmd BufNewFile *.c lua SetTitle()")
