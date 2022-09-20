" ====================== === Enhance Editor ===

lua require('basic')
lua require('keybindings')
lua require('globlevars')
lua require('pluginstall')
lua require('plugcfg')
lua require('usercmd')

" =================================
" ===   plugins  configuration  ===
" =================================

" function! CheckBackSpace() abort
"     let col = col('.') - 1
"     return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
"
" " Insert <tab> when previous text is space, refresh completion if not.
" inoremap <silent><expr> <TAB>
" 	\ coc#pum#visible() ? coc#pum#next(1):
" 	\ CheckBackSpace() ? "\<Tab>" :
" 	\ coc#refresh()
" inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
"
" inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
"
" function! ShowDocumentation()
"   if CocAction('hasProvider', 'hover')
"     call CocActionAsync('doHover')
"   else
"     call feedkeys('K', 'in')
"   endif
" endfunction

"设置默认图片名称。当图片名称没有给出时，使用默认图片名称
"设置快捷键，个人喜欢 Ctrl+p 的方式，比较直观
" autocmd FileType markdown nnoremap <silent> <C-p> :call mdip#MarkdownClipboardImage()<CR>F%i

" Remap <C-f> and <C-b> for scroll float windows/popups.
" if has('nvim-0.4.0') || has('patch-8.2.0750')
"   nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
"   inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(1)\<CR>" : "\<Right>"
"   inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<C-r>=coc#float#scroll(0)\<CR>" : "\<Left>"
"   vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
"   vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
" endif

" command! -nargs=0 Format :call CocAction('format')

" augroup mygroup
"   autocmd!
"   autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
"   autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
" augroup end

