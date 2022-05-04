function! ReloadLacuna()
lua << EOF
	for k in pairs(package.loaded) do
		if k:match("^lacuna") then
			package.loaded[k] = nil
		end
	end
EOF
endfunction

nnoremap <leader>pra :call ReloadLacuna()<CR>
nnoremap <leader>ptt :lua require("lacuna").find("lua", "")<CR>
