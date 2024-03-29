" actodo syntax file.
" Anthony Perkins

if exists("b:current_syntax")
	finish
endif

syntax match actodoName /^#\+\s\+.\+/
syntax match actodoTodo /^\s*TODO:/
syntax match actodoWait /^\s*WAIT:/
syntax match actodoWork /^\s*WORK:/
syntax match actodoDone /^\s*DONE:/
syntax match actodoUrl /<.*:\/\/.\+>/
syntax match actodoTicket /##\w\+##/
syntax match actodoDone /##\w\+:Closed##/
syntax match actodoTag /\v#\a(\w)+/

" ISO date.
syntax match actodoDate /\<\d\{4}-\d\{2}-\d\{2}\([T/]\S*\)*\>/

" ISO time.
syntax match actodoDate /\<T\d\{2}:\d\{2}\(\/\S*\)*\>/

" Days of the week.
syntax match actodoDate /\<Monday\>/
syntax match actodoDate /\<Tuesday\>/
syntax match actodoDate /\<Wednesday\>/
syntax match actodoDate /\<Thursday\>/
syntax match actodoDate /\<Friday\>/
syntax match actodoDate /\<Saturday\>/
syntax match actodoDate /\<Sunday\>/
syntax match actodoDate /\<Mon\>/
syntax match actodoDate /\<Tue\>/
syntax match actodoDate /\<Wed\>/
syntax match actodoDate /\<Thu\>/
syntax match actodoDate /\<Fri\>/
syntax match actodoDate /\<Sat\>/
syntax match actodoDate /\<Sun\>/

" Importance.
syntax match actodoImportant /\[!\]/
syntax match actodoImportant /\[!!\]/
syntax match actodoImportant /\[!!!\]/

highlight actodoName term=bold,underline cterm=bold,underline gui=bold,underline
highlight actodoTodo term=bold cterm=bold gui=bold ctermfg=red guifg=red
highlight actodoWait term=bold cterm=bold gui=bold ctermfg=DarkRed guifg=purple
highlight actodoWork term=bold cterm=bold gui=bold ctermfg=green guifg=green
highlight actodoTicket term=bold cterm=bold gui=bold ctermfg=DarkCyan guifg=DarkCyan
if &background ==# 'light'
	highlight actodoDone term=bold cterm=bold gui=bold ctermfg=LightGray guifg=LightGray
	highlight actodoUrl ctermfg=blue guifg=blue
	highlight actodoDate term=bold cterm=bold gui=bold ctermfg=blue guifg=blue
	highlight actodoImportant term=bold cterm=bold gui=bold ctermfg=LightRed guifg=LightRed
	highlight actodoTag term=bold cterm=bold gui=bold ctermfg=LightRed guifg=LightRed
else
	highlight actodoDone term=bold cterm=bold gui=bold ctermfg=DarkGray guifg=DarkGray
	highlight actodoUrl ctermfg=cyan guifg=cyan
	highlight actodoDate term=bold cterm=bold gui=bold ctermfg=cyan guifg=cyan
	highlight actodoImportant term=bold cterm=bold gui=bold ctermfg=yellow guifg=yellow
	highlight actodoTag term=bold cterm=bold gui=bold ctermfg=yellow guifg=yellow
endif

let b:current_syntax = 'actodo'
