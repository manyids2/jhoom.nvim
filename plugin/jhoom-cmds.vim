

" GPL-3.0 License

" prevent the plugin from loading twice
if exists('g:loaded_Jhoom') | finish | endif

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

command! JhoomTest lua RELOAD("jhoom"); require'jhoom'.setup()
command! JhoomLualine lua RELOAD("jhoom"); require'jhoom'.pick("lualine")
" }}}

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

" set to true the var that controls the plugin's loading
let g:loaded_Jhoom = 1
